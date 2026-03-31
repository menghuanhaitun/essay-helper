// 用户数据 API
export async function onRequestGet({ request, env }) {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
  };

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

export async function onRequestPost({ request, env }) {
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
  };

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
