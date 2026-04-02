// Cloudflare Workers API - 作文助手后端
// CORS 配置
const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
  'Access-Control-Allow-Headers': 'Content-Type',
};

// 工具函数：生成简单的 token
function generateToken(userId) {
  return btoa(userId + ':' + Date.now());
}

// 工具函数：解析 token
function parseToken(token) {
  try {
    const decoded = atob(token);
    const [userId, timestamp] = decoded.split(':');
    return { userId, timestamp: parseInt(timestamp) };
  } catch {
    return null;
  }
}

// 路由处理
export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;
    const method = request.method;

    // 处理 CORS 预检请求
    if (method === 'OPTIONS') {
      return new Response(null, { headers: corsHeaders });
    }

    try {
      // 路由分发
      if (path === '/api/register' && method === 'POST') {
        return await handleRegister(request, env);
      } else if (path === '/api/login' && method === 'POST') {
        return await handleLogin(request, env);
      } else if (path === '/api/verify' && method === 'POST') {
        return await handleVerify(request, env);
      } else if (path === '/api/user-data' && method === 'GET') {
        return await handleLoadData(request, env);
      } else if (path === '/api/user-data' && method === 'POST') {
        return await handleSaveData(request, env);
      } else if (path.startsWith('/api/user-data/') && method === 'DELETE') {
        return await handleDeleteData(request, env);
      } else if (path === '/api/vocab-library' && method === 'GET') {
        return await handleVocabLibrary(request, env);
      } else if (path === '/api/essays' && method === 'GET') {
        return await handleEssays(request, env);
      } else if (path === '/api/upgrade-examples' && method === 'GET') {
        return await handleUpgradeExamples(request, env);
      } else if (path === '/api/upgrade-rules' && method === 'GET') {
        return await handleUpgradeRules(request, env);
      } else if (path === '/api/practice-topics' && method === 'GET') {
        return await handlePracticeTopics(request, env);
      } else if (path === '/api/guide-templates' && method === 'GET') {
        return await handleGuideTemplates(request, env);
      } else {
        return new Response(JSON.stringify({ error: 'Not Found' }), {
          status: 404,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' }
        });
      }
    } catch (error) {
      console.error('Worker Error:', error);
      return new Response(JSON.stringify({ error: error.message }), {
        status: 500,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      });
    }
  }
};

// 注册处理
async function handleRegister(request, env) {
  const { username, password } = await request.json();

  if (!username || !password) {
    return new Response(JSON.stringify({ error: '用户名和密码不能为空' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  // 检查用户是否已存在
  const existingUser = await env.DB.prepare(
    'SELECT id FROM users WHERE username = ?'
  ).bind(username).first();

  if (existingUser) {
    return new Response(JSON.stringify({ error: '用户名已存在' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  // 创建用户
  const result = await env.DB.prepare(
    'INSERT INTO users (username, password) VALUES (?, ?) RETURNING id'
  ).bind(username, password).first();

  const token = generateToken(result.id);

  return new Response(JSON.stringify({
    success: true,
    userId: result.id,
    username: username,
    token: token
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 登录处理
async function handleLogin(request, env) {
  const { username, password } = await request.json();

  if (!username || !password) {
    return new Response(JSON.stringify({ error: '用户名和密码不能为空' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  // 验证用户
  const user = await env.DB.prepare(
    'SELECT id, username FROM users WHERE username = ? AND password = ?'
  ).bind(username, password).first();

  if (!user) {
    return new Response(JSON.stringify({ error: '用户名或密码错误' }), {
      status: 401,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  const token = generateToken(user.id);

  return new Response(JSON.stringify({
    success: true,
    userId: user.id,
    username: user.username,
    token: token
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// Token 验证
async function handleVerify(request, env) {
  const { token } = await request.json();

  if (!token) {
    return new Response(JSON.stringify({ error: 'Token 不能为空' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  const parsed = parseToken(token);
  if (!parsed) {
    return new Response(JSON.stringify({ valid: false }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  // 检查用户是否存在
  const user = await env.DB.prepare(
    'SELECT id, username FROM users WHERE id = ?'
  ).bind(parsed.userId).first();

  if (!user) {
    return new Response(JSON.stringify({ valid: false }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  return new Response(JSON.stringify({
    valid: true,
    userId: user.id,
    username: user.username
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 加载用户数据
async function handleLoadData(request, env) {
  const url = new URL(request.url);
  const userId = url.searchParams.get('userId');

  if (!userId) {
    return new Response(JSON.stringify({ error: '缺少 userId' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  const results = await env.DB.prepare(
    'SELECT id, data_type, data_value, category, created_at FROM user_data WHERE user_id = ? ORDER BY created_at DESC'
  ).bind(userId).all();

  // 组织数据
  const data = {
    score: null,
    myWords: [],
    mySentences: []
  };

  for (const row of results.results) {
    if (row.data_type === 'score') {
      data.score = JSON.parse(row.data_value);
    } else if (row.data_type === 'my_word') {
      data.myWords.push({
        id: row.id,
        ...JSON.parse(row.data_value),
        cat: row.category
      });
    } else if (row.data_type === 'my_sentence') {
      data.mySentences.push({
        id: row.id,
        ...JSON.parse(row.data_value),
        cat: row.category
      });
    }
  }

  return new Response(JSON.stringify({
    success: true,
    data: data
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 保存用户数据
async function handleSaveData(request, env) {
  const { userId, dataType, dataValue, category } = await request.json();

  if (!userId || !dataType || !dataValue) {
    return new Response(JSON.stringify({ error: '缺少必要参数' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  const result = await env.DB.prepare(
    'INSERT INTO user_data (user_id, data_type, data_value, category) VALUES (?, ?, ?, ?) RETURNING id'
  ).bind(userId, dataType, dataValue, category || null).first();

  return new Response(JSON.stringify({
    success: true,
    id: result.id
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 删除用户数据
async function handleDeleteData(request, env) {
  const url = new URL(request.url);
  const pathParts = url.pathname.split('/');
  const dataId = pathParts[pathParts.length - 1];
  const userId = url.searchParams.get('userId');

  if (!dataId || !userId) {
    return new Response(JSON.stringify({ error: '缺少必要参数' }), {
      status: 400,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  await env.DB.prepare(
    'DELETE FROM user_data WHERE id = ? AND user_id = ?'
  ).bind(parseInt(dataId), userId).run();

  return new Response(JSON.stringify({
    success: true
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 获取词库（从 D1 vocab_library 表）
async function handleVocabLibrary(request, env) {
  const results = await env.DB.prepare(
    'SELECT type, category, content, example FROM vocab_library ORDER BY category, type, id'
  ).all();

  // 按 category 分组，每组下分 words 和 sentences
  const grouped = {};
  for (const row of results.results) {
    const cat = row.category;
    if (!grouped[cat]) grouped[cat] = { words: [], sentences: [] };
    if (row.type === 'word') {
      grouped[cat].words.push({ w: row.content, eg: row.example || '' });
    } else if (row.type === 'sentence') {
      grouped[cat].sentences.push({ s: row.content, type: row.example || '' });
    }
  }

  return new Response(JSON.stringify({
    success: true,
    data: grouped
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 获取范文拆解数据
async function handleEssays(request, env) {
  const url = new URL(request.url);
  const random = url.searchParams.get('random');

  if (random === '1') {
    // 随机返回一篇完整范文（可按 type 过滤）
    const essayType = url.searchParams.get('type');
    let query = 'SELECT id, title, type FROM essays ORDER BY RANDOM() LIMIT 1';
    let binds = [];
    if (essayType) {
      query = 'SELECT id, title, type FROM essays WHERE type = ? ORDER BY RANDOM() LIMIT 1';
      binds = [essayType];
    }
    const essayRow = await env.DB.prepare(query).bind(...binds).first();

    if (!essayRow) {
      return new Response(JSON.stringify({ success: false, error: '暂无范文' }), {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      });
    }

    const paras = await env.DB.prepare(
      'SELECT id, para_order, text_html, skills FROM essay_paras WHERE essay_id = ? ORDER BY para_order'
    ).bind(essayRow.id).all();

    const paraIds = paras.results.map(p => p.id);
    let annoMap = {};
    if (paraIds.length > 0) {
      const placeholders = paraIds.map(() => '?').join(',');
      const annos = await env.DB.prepare(
        `SELECT para_id, color, key_text, anno_text FROM essay_annos WHERE para_id IN (${placeholders}) ORDER BY para_id, sort_order`
      ).bind(...paraIds).all();
      for (const a of annos.results) {
        if (!annoMap[a.para_id]) annoMap[a.para_id] = [];
        annoMap[a.para_id].push({ color: a.color, key: a.key_text, text: a.anno_text });
      }
    }

    const data = {
      id: essayRow.id,
      title: essayRow.title,
      type: essayRow.type || '',
      paras: paras.results.map(p => ({
        text: p.text_html,
        annos: annoMap[p.id] || [],
        skills: p.skills ? p.skills.split(',') : []
      }))
    };

    return new Response(JSON.stringify({ success: true, data }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  // 默认：查所有范文（按 sort_order）
  const essays = await env.DB.prepare(
    'SELECT id, title, type FROM essays ORDER BY sort_order'
  ).all();

  // 查所有段落
  const paras = await env.DB.prepare(
    'SELECT id, essay_id, para_order, text_html, skills FROM essay_paras ORDER BY essay_id, para_order'
  ).all();

  // 查所有注释
  const annos = await env.DB.prepare(
    'SELECT para_id, color, key_text, anno_text FROM essay_annos ORDER BY para_id, sort_order'
  ).all();

  // 组装数据
  const annoMap = {};
  for (const a of annos.results) {
    if (!annoMap[a.para_id]) annoMap[a.para_id] = [];
    annoMap[a.para_id].push({ color: a.color, key: a.key_text, text: a.anno_text });
  }

  const paraMap = {};
  for (const p of paras.results) {
    if (!paraMap[p.essay_id]) paraMap[p.essay_id] = [];
    paraMap[p.essay_id].push({
      text: p.text_html,
      annos: annoMap[p.id] || [],
      skills: p.skills ? p.skills.split(',') : []
    });
  }

  const data = essays.results.map(e => ({
    id: e.id,
    title: e.title,
    type: e.type || '',
    paras: paraMap[e.id] || []
  }));

  return new Response(JSON.stringify({
    success: true,
    data
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 获取句子升级示例（随机5条）
async function handleUpgradeExamples(request, env) {
  const url = new URL(request.url);
  const limit = parseInt(url.searchParams.get('limit') || '5');
  // 随机取 limit 条
  const results = await env.DB.prepare(
    'SELECT before_text, tech, after_text FROM upgrade_examples ORDER BY RANDOM() LIMIT ?'
  ).bind(limit).all();

  return new Response(JSON.stringify({
    success: true,
    data: results.results
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 获取句子升级规则（全部，按关键词匹配用）
async function handleUpgradeRules(request, env) {
  const results = await env.DB.prepare(
    'SELECT keys, tech, tip_text FROM upgrade_rules ORDER BY sort_order'
  ).all();

  // 按 keys 分组，同一组 keys 的多条 tech 合并
  const grouped = {};
  for (const row of results.results) {
    const k = row.keys;
    if (!grouped[k]) grouped[k] = { keys: k.split(','), tips: [] };
    grouped[k].tips.push({ tech: row.tech, s: row.tip_text });
  }

  return new Response(JSON.stringify({
    success: true,
    data: Object.values(grouped)
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 获取写作练习题目
async function handlePracticeTopics(request, env) {
  const url = new URL(request.url);
  const random = url.searchParams.get('random');
  const category = url.searchParams.get('category');

  if (random === '1') {
    // 随机返回1道题
    let query = 'SELECT id, topic, hint, category FROM practice_topics ORDER BY RANDOM() LIMIT 1';
    let binds = [];
    if (category) {
      query = 'SELECT id, topic, hint, category FROM practice_topics WHERE category = ? ORDER BY RANDOM() LIMIT 1';
      binds = [category];
    }
    const result = await env.DB.prepare(query).bind(...binds).first();
    return new Response(JSON.stringify({
      success: true,
      data: result || null
    }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  // 返回所有题目（按分类排序）
  let query = 'SELECT id, topic, hint, category FROM practice_topics ORDER BY sort_order';
  let binds = [];
  if (category) {
    query = 'SELECT id, topic, hint, category FROM practice_topics WHERE category = ? ORDER BY sort_order';
    binds = [category];
  }
  const result = await env.DB.prepare(query).bind(...binds).all();
  return new Response(JSON.stringify({
    success: true,
    data: result.results
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}

// 获取作文引导模板
async function handleGuideTemplates(request, env) {
  const url = new URL(request.url);
  const type = url.searchParams.get('type');

  const types = await env.DB.prepare(
    'SELECT id, type_name, topics FROM guide_types ORDER BY sort_order'
  ).all();

  const steps = await env.DB.prepare(
    'SELECT type_id, step_order, title, description, tips FROM guide_steps ORDER BY type_id, step_order'
  ).all();

  // 按 type_id 分组步骤
  const stepMap = {};
  for (const s of steps.results) {
    if (!stepMap[s.type_id]) stepMap[s.type_id] = [];
    stepMap[s.type_id].push({
      title: s.title,
      desc: s.description,
      tips: typeof s.tips === 'string' ? JSON.parse(s.tips) : s.tips
    });
  }

  // 组装数据
  const data = {};
  for (const t of types.results) {
    data[t.type_name] = {
      topics: typeof t.topics === 'string' ? JSON.parse(t.topics) : t.topics,
      framework: stepMap[t.id] || []
    };
  }

  // 如果指定了 type，只返回一种
  if (type && data[type]) {
    return new Response(JSON.stringify({
      success: true,
      data: data[type]
    }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }

  return new Response(JSON.stringify({
    success: true,
    data
  }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' }
  });
}
