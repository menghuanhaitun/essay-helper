// 云端同步 API 客户端 - 使用 Cloudflare Workers
const CLOUD_API_BASE = 'https://essay-helper-api.ming-li8245.workers.dev/api';

// 请求配置
const API_TIMEOUT = 8000;   // 8秒超时
const MAX_RETRIES = 2;      // 最多重试2次

// 检查是否登录
function isLoggedIn() {
  return !!(localStorage.getItem('userId') && localStorage.getItem('username'));
}

// 带超时和重试的通用请求函数
async function apiRequest(endpoint, method, body) {
  let lastError;
  for (let attempt = 0; attempt <= MAX_RETRIES; attempt++) {
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), API_TIMEOUT);

    try {
      const options = {
        method: method,
        headers: { 'Content-Type': 'application/json' },
        signal: controller.signal
      };
      if (body) options.body = JSON.stringify(body);

      const response = await fetch(CLOUD_API_BASE + endpoint, options);
      clearTimeout(timeoutId);

      const data = await response.json();
      if (!response.ok) {
        throw new Error(data.error || '请求失败');
      }
      return data;
    } catch (error) {
      clearTimeout(timeoutId);
      lastError = error;
      if (error.name === 'AbortError') {
        lastError = new Error('请求超时，请检查网络');
      }
      // 最后一次重试失败才抛出
      if (attempt < MAX_RETRIES) {
        await new Promise(r => setTimeout(r, 500 * (attempt + 1)));
      }
    }
  }
  throw lastError;
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

// 同步本地数据到云端（批量：1次请求替代 N 次串行请求）
async function syncToCloud() {
  if (!isLoggedIn()) {
    return { success: false, message: '未登录' };
  }

  try {
    const userId = localStorage.getItem('userId');

    await apiRequest('/user-data/sync', 'POST', {
      userId,
      score: { totalScore: state.totalScore },
      myWords: state.myWords.map(w => ({ w: w.w, eg: w.eg || '', cat: w.cat || null })),
      mySentences: state.mySentences.map(s => ({ s: s.s, type: s.type || '', cat: s.cat || null }))
    });

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

// ══════════════════════════════════════════
//  本地缓存系统（localStorage）
// ══════════════════════════════════════════
const CACHE_PREFIX = 'eh_cache_';
const CACHE_DURATION = {
  vocab:      30 * 24 * 3600 * 1000, // 30天
  guide:      30 * 24 * 3600 * 1000, // 30天
  upgrade:    30 * 24 * 3600 * 1000, // 30天
  essay:      7  * 24 * 3600 * 1000, // 7天
  practice:   7  * 24 * 3600 * 1000, // 7天
  initData:   7  * 24 * 3600 * 1000, // 7天
};

// 读取缓存，过期返回 null
function readCache(key) {
  try {
    const raw = localStorage.getItem(CACHE_PREFIX + key);
    if (!raw) return null;
    const item = JSON.parse(raw);
    const maxAge = CACHE_DURATION[key] || CACHE_DURATION.initData;
    if (Date.now() - item.time > maxAge) {
      localStorage.removeItem(CACHE_PREFIX + key);
      return null;
    }
    return item.data;
  } catch (e) {
    return null;
  }
}

// 写入缓存
function writeCache(key, data) {
  try {
    localStorage.setItem(CACHE_PREFIX + key, JSON.stringify({ data, time: Date.now() }));
  } catch (e) {
    // localStorage 满了，静默失败
    console.warn('缓存写入失败:', e);
  }
}

// 清除所有应用缓存（保留用户登录状态和个人数据）
function clearAllCache() {
  const keysToRemove = [];
  for (let i = 0; i < localStorage.length; i++) {
    const k = localStorage.key(i);
    if (k && k.startsWith(CACHE_PREFIX)) {
      keysToRemove.push(k);
    }
  }
  keysToRemove.forEach(k => localStorage.removeItem(k));
  return keysToRemove.length;
}

// 获取缓存信息（用于调试/展示）
function getCacheInfo() {
  const info = {};
  Object.keys(CACHE_DURATION).forEach(key => {
    const raw = localStorage.getItem(CACHE_PREFIX + key);
    if (raw) {
      try {
        const item = JSON.parse(raw);
        const maxAge = CACHE_DURATION[key];
        const remaining = Math.max(0, maxAge - (Date.now() - item.time));
        const days = Math.ceil(remaining / (24 * 3600 * 1000));
        info[key] = { size: (raw.length / 1024).toFixed(1) + 'KB', remaining: days + '天' };
      } catch (e) {}
    }
  });
  return info;
}
