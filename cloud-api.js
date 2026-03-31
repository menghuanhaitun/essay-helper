// 云端同步 API 客户端
const CLOUD_API_BASE = window.location.origin + '/api';

// 检查是否登录
function isLoggedIn() {
  return !!localStorage.getItem('userId');
}

// 注册
async function cloudRegister(username, password) {
  try {
    const response = await fetch(CLOUD_API_BASE + '/register', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username, password })
    });

    const text = await response.text();
    console.log('注册响应:', response.status, text);

    if (!response.ok) {
      try {
        const data = JSON.parse(text);
        throw new Error(data.error || '注册失败');
      } catch (e) {
        throw new Error('注册失败: ' + text);
      }
    }

    const data = JSON.parse(text);
    // 保存用户信息
    localStorage.setItem('userId', data.userId);
    localStorage.setItem('username', username);
    return data;
  } catch (error) {
    console.error('注册错误:', error);
    throw error;
  }
}

// 登录
async function cloudLogin(username, password) {
  const response = await fetch(CLOUD_API_BASE + '/login', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ username, password })
  });

  const data = await response.json();
  if (!response.ok) {
    throw new Error(data.error || '登录失败');
  }

  // 保存用户信息
  localStorage.setItem('userId', data.userId);
  localStorage.setItem('username', data.username);
  return data;
}

// 退出登录
function cloudLogout() {
  localStorage.removeItem('userId');
  localStorage.removeItem('username');
}

// 从云端加载数据
async function cloudLoadData() {
  const userId = localStorage.getItem('userId');
  if (!userId) {
    throw new Error('未登录');
  }

  const response = await fetch(CLOUD_API_BASE + '/user-data?userId=' + userId, {
    method: 'GET',
    headers: { 'Content-Type': 'application/json' }
  });

  const data = await response.json();
  if (!response.ok) {
    throw new Error(data.error || '加载数据失败');
  }

  return data.data;
}

// 保存数据到云端
async function cloudSaveData(dataType, dataValue, category = null) {
  const userId = localStorage.getItem('userId');
  if (!userId) {
    throw new Error('未登录');
  }

  const response = await fetch(CLOUD_API_BASE + '/user-data', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      userId,
      dataType,
      dataValue: JSON.stringify(dataValue),
      category
    })
  });

  const data = await response.json();
  if (!response.ok) {
    throw new Error(data.error || '保存失败');
  }

  return data;
}

// 删除云端数据
async function cloudDeleteData(id) {
  const userId = localStorage.getItem('userId');
  if (!userId) {
    throw new Error('未登录');
  }

  const response = await fetch(CLOUD_API_BASE + '/user-data/' + id + '?userId=' + userId, {
    method: 'DELETE',
    headers: { 'Content-Type': 'application/json' }
  });

  const data = await response.json();
  if (!response.ok) {
    throw new Error(data.error || '删除失败');
  }

  return data;
}

// 同步本地数据到云端
async function syncToCloud() {
  if (!isLoggedIn()) {
    return { success: false, message: '未登录' };
  }

  try {
    // 保存积分
    await cloudSaveData('score', { totalScore: state.totalScore });

    // 保存好词好句
    for (const word of state.myWords) {
      await cloudSaveData('my_word', word, word.cat);
    }
    for (const sent of state.mySentences) {
      await cloudSaveData('my_sentence', sent, sent.cat);
    }

    return { success: true, message: '同步成功' };
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
    const data = await cloudLoadData();

    // 恢复积分
    if (data.score) {
      const scoreData = JSON.parse(data.score);
      state.totalScore = scoreData.totalScore || 0;
    }

    // 恢复好词好句
    state.myWords = data.myWords.map(w => ({ w: w.w, cat: w.cat, id: w.id }));
    state.mySentences = data.mySentences.map(s => ({ s: s.s, cat: s.cat, id: s.id }));

    saveState();
    updateScoreBar();

    return { success: true, message: '同步成功' };
  } catch (error) {
    return { success: false, message: error.message };
  }
}
