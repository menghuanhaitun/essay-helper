// 删除用户数据 API - DELETE /api/user-data/[id]
export async function onRequestDelete({ request, env, params }) {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
  };

  const id = params.id;
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
