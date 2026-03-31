// 云端同步 API 客户端 - 使用 Cloudflare Workers
const CLOUD_API_BASE = 'https://essay-helper-api.ming-li8245.workers.dev/api';

// 检查是否登录
function isLoggedIn() {
  return !!(localStorage.getItem('userId') && localStorage.getItem('username'));
}

// 通用请求函数
async function apiRequest(endpoint, method, body) {
  const options = {
    method: method,
    headers: { 'Content-Type': 'application/json' }
  };
  if (body) options.body = JSON.stringify(body);

  const response = await fetch(CLOUD_API_BASE + endpoint, options);
  const data = await response.json();

  if (!response.ok) {
    throw new Error(data.error || '请求失败');
  }
  return data;
}

// 注册
async function cloudRegister(username, password) {
  if (!username || username.trim().length === 0) {
    throw new Error('用户名不能为空');
  }
  if (!password || password.length < 4) {
    throw new Error('密码至少4位');
  }

  const data = await apiRequest('/register', 'POST', { username, password });

  localStorage.setItem('userId', data.userId);
  localStorage.setItem('username', data.username);
  if (data.token) localStorage.setItem('token', data.token);

  return data;
}

// 登录
async function cloudLogin(username, password) {
  if (!username || username.trim().length === 0) {
    throw new Error('用户名不能为空');
  }
  if (!password) {
    throw new Error('密码不能为空');
  }

  const data = await apiRequest('/login', 'POST', { username, password });

  localStorage.setItem('userId', data.userId);
  localStorage.setItem('username', data.username);
  if (data.token) localStorage.setItem('token', data.token);

  return data;
}

// 退出登录
function cloudLogout() {
  localStorage.removeItem('userId');
  localStorage.removeItem('username');
  localStorage.removeItem('token');
}

// 从云端加载数据
async function cloudLoadData() {
  const userId = localStorage.getItem('userId');
  if (!userId) throw new Error('未登录');

  return await apiRequest('/user-data?userId=' + userId, 'GET');
}

// 保存数据到云端
async function cloudSaveData(dataType, dataValue, category = null) {
  const userId = localStorage.getItem('userId');
  if (!userId) throw new Error('未登录');

  return await apiRequest('/user-data', 'POST', {
    userId,
    dataType,
    dataValue: typeof dataValue === 'string' ? dataValue : JSON.stringify(dataValue),
    category
  });
}

// 删除云端数据
async function cloudDeleteData(id) {
  const userId = localStorage.getItem('userId');
  if (!userId) throw new Error('未登录');

  return await apiRequest('/user-data/' + id + '?userId=' + userId, 'DELETE');
}

// 同步本地数据到云端
async function syncToCloud() {
  if (!isLoggedIn()) {
    return { success: false, message: '未登录' };
  }

  try {
    const userId = localStorage.getItem('userId');

    // 先清除旧数据，再上传新数据（通过覆盖方式）
    // 保存积分
    await apiRequest('/user-data', 'POST', {
      userId,
      dataType: 'score',
      dataValue: JSON.stringify({ totalScore: state.totalScore }),
      category: null
    });

    // 保存好词
    for (const word of state.myWords) {
      await apiRequest('/user-data', 'POST', {
        userId,
        dataType: 'my_word',
        dataValue: JSON.stringify({ w: word.w }),
        category: word.cat || null
      });
    }

    // 保存好句
    for (const sent of state.mySentences) {
      await apiRequest('/user-data', 'POST', {
        userId,
        dataType: 'my_sentence',
        dataValue: JSON.stringify({ s: sent.s }),
        category: sent.cat || null
      });
    }

    return { success: true, message: '同步成功！' };
  } catch (error) {
    return { success: false, message: error.message };
  }
}

// 从云端同步到本地
async function syncFromCloud() {
  if (!isLoggedIn()) {
    return { success: false, message: '未登录' };
  }

  try {
    const result = await cloudLoadData();
    if (!result.success) throw new Error('加载失败');

    const data = result.data;

    // 恢复积分
    if (data.score && data.score.totalScore !== undefined) {
      state.totalScore = data.score.totalScore;
    }

    // 恢复好词好句（覆盖本地数据）
    if (data.myWords && data.myWords.length > 0) {
      state.myWords = data.myWords.map(w => ({
        w: w.w,
        cat: w.cat || '其他',
        id: w.id
      }));
    }
    if (data.mySentences && data.mySentences.length > 0) {
      state.mySentences = data.mySentences.map(s => ({
        s: s.s,
        cat: s.cat || '其他',
        id: s.id
      }));
    }

    saveState();
    if (typeof updateScoreBar === 'function') updateScoreBar();

    return { success: true, message: '从云端同步成功！' };
  } catch (error) {
    return { success: false, message: error.message };
  }
}
