// Cloudflare Pages Functions - API 路由入口
export async function onRequest({ request, env, params }) {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
  };

  if (request.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders });
  }

  const path = params.path || [];
  const action = path[0];

  // 处理 register
  if (action === 'register' && request.method === 'POST') {
    return await handleRegister(request, env, corsHeaders);
  }

  // 处理 login
  if (action === 'login' && request.method === 'POST') {
    return await handleLogin(request, env, corsHeaders);
  }

  // 处理 verify
  if (action === 'verify' && request.method === 'POST') {
    return await handleVerify(request, env, corsHeaders);
  }

  // 处理 user-data
  if (action === 'user-data') {
    // DELETE /api/user-data/:id
    if (path[1] && request.method === 'DELETE') {
      return await handleDeleteUserData(request, env, corsHeaders, path[1]);
    }
    // GET /api/user-data
    if (request.method === 'GET') {
      return await handleGetUserData(request, env, corsHeaders);
    }
    // POST /api/user-data
    if (request.method === 'POST') {
      return await handleSaveUserData(request, env, corsHeaders);
    }
  }

  return jsonResponse({ error: 'Not found' }, 404, corsHeaders);
}

async function handleRegister(request, env, corsHeaders) {
  const { username, password } = await request.json();

  if (!username || !password) {
    return jsonResponse({ error: '用户名和密码不能为空' }, 400, corsHeaders);
  }

  const existingUser = await env.DB.prepare(
    'SELECT id FROM users WHERE username = ?'
  ).bind(username).first();

  if (existingUser) {
    return jsonResponse({ error: '用户名已存在' }, 400, corsHeaders);
  }

  const result = await env.DB.prepare(
    'INSERT INTO users (username, password) VALUES (?, ?)'
  ).bind(username, password).run();

  return jsonResponse({
    success: true,
    userId: result.meta.last_row_id,
  }, 200, corsHeaders);
}

async function handleLogin(request, env, corsHeaders) {
  const { username, password } = await request.json();

  if (!username || !password) {
    return jsonResponse({ error: '用户名和密码不能为空' }, 400, corsHeaders);
  }

  const user = await env.DB.prepare(
    'SELECT id FROM users WHERE username = ? AND password = ?'
  ).bind(username, password).first();

  if (!user) {
    return jsonResponse({ error: '用户名或密码错误' }, 401, corsHeaders);
  }

  return jsonResponse({
    success: true,
    userId: user.id,
    username: username,
  }, 200, corsHeaders);
}

async function handleVerify(request, env, corsHeaders) {
  const { userId } = await request.json();

  if (!userId) {
    return jsonResponse({ error: 'userId 不能为空' }, 400, corsHeaders);
  }

  const user = await env.DB.prepare(
    'SELECT username FROM users WHERE id = ?'
  ).bind(userId).first();

  if (!user) {
    return jsonResponse({ error: '用户不存在' }, 404, corsHeaders);
  }

  return jsonResponse({
    success: true,
    username: user.username,
  }, 200, corsHeaders);
}

async function handleGetUserData(request, env, corsHeaders) {
  const url = new URL(request.url);
  const userId = url.searchParams.get('userId');

  if (!userId) {
    return jsonResponse({ error: 'userId 不能为空' }, 400, corsHeaders);
  }

  const scoreResult = await env.DB.prepare(
    'SELECT data_value FROM user_data WHERE user_id = ? AND data_type = ?'
  ).bind(userId, 'score').first();

  const myWordsResult = await env.DB.prepare(
    'SELECT id, data_value, category FROM user_data WHERE user_id = ? AND data_type = ?'
  ).bind(userId, 'my_word').all();

  const mySentencesResult = await env.DB.prepare(
    'SELECT id, data_value, category FROM user_data WHERE user_id = ? AND data_type = ?'
  ).bind(userId, 'my_sentence').all();

  return jsonResponse({
    success: true,
    data: {
      score: scoreResult ? scoreResult.data_value : null,
      myWords: myWordsResult.results.map(row => ({
        id: row.id,
        w: row.data_value,
        cat: row.category
      })),
      mySentences: mySentencesResult.results.map(row => ({
        id: row.id,
        s: row.data_value,
        cat: row.category
      })),
    }
  }, 200, corsHeaders);
}

async function handleSaveUserData(request, env, corsHeaders) {
  const { userId, dataType, dataValue, category } = await request.json();

  if (!userId || !dataType || !dataValue) {
    return jsonResponse({ error: 'userId, dataType, dataValue 不能为空' }, 400, corsHeaders);
  }

  if (dataType === 'score') {
    await env.DB.prepare(
      'DELETE FROM user_data WHERE user_id = ? AND data_type = ?'
    ).bind(userId, 'score').run();
  }

  const result = await env.DB.prepare(
    'INSERT INTO user_data (user_id, data_type, data_value, category) VALUES (?, ?, ?, ?)'
  ).bind(userId, dataType, dataValue, category || null).run();

  return jsonResponse({
    success: true,
    id: result.meta.last_row_id,
  }, 200, corsHeaders);
}

async function handleDeleteUserData(request, env, corsHeaders, id) {
  const url = new URL(request.url);
  const userId = url.searchParams.get('userId');

  if (!userId) {
    return jsonResponse({ error: 'userId 不能为空' }, 400, corsHeaders);
  }

  await env.DB.prepare(
    'DELETE FROM user_data WHERE id = ? AND user_id = ?'
  ).bind(id, userId).run();

  return jsonResponse({ success: true }, 200, corsHeaders);
}

function jsonResponse(data, status, headers) {
  return new Response(JSON.stringify(data), {
    status,
    headers: {
      ...headers,
      'Content-Type': 'application/json',
    },
  });
}
