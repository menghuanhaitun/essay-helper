/**
 * 读取词库数据
 */
export async function onRequestGet({ request, env }) {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
  };

  try {
    // 获取查询参数
    const url = new URL(context.request.url);
    const type = url.searchParams.get('type'); // 'word' 或 'sentence'
    const category = url.searchParams.get('category'); // 分类
    const limit = parseInt(url.searchParams.get('limit') || '10'); // 返回数量

    // 构建查询条件
    let query = 'SELECT * FROM vocab_library WHERE 1=1';
    const params = [];

    if (type) {
      query += ' AND type = ?';
      params.push(type);
    }

    if (category) {
      query += ' AND category = ?';
      params.push(category);
    }

    // 添加随机排序
    query += ' ORDER BY RANDOM() LIMIT ?';
    params.push(limit);

    // 执行查询
    const stmt = env.DB.prepare(query);
    const result = await stmt.bind(...params).all();

    // 返回结果
    return new Response(JSON.stringify({
      success: true,
      data: result.results
    }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });

  } catch (error) {
    console.error('读取词库失败:', error);
    return new Response(JSON.stringify({
      success: false,
      error: error.message
    }), {
      status: 500,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    });
  }
}

export async function onRequestOptions() {
  return new Response(null, {
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type',
    }
  });
}
