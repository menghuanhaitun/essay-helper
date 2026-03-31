// 登录 API
export async function onRequestPost({ request, env }) {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
  };

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

export async function onRequestOptions() {
  return new Response(null, {
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type',
    },
  });
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
