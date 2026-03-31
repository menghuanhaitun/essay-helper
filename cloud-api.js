// 云端同步 API 客户端
const CLOUD_API_BASE = window.location.origin + '/api';

// 检查是否登录
function isLoggedIn() {
  return !!localStorage.getItem('userId');
}

// 注册（本地模式）
async function cloudRegister(username, password) {
  // 本地模式：简单验证用户名不为空即可
  if (!username || username.trim().length === 0) {
    throw new Error('用户名不能为空');
  }

  // 模拟注册成功
  const userId = 'local-' + Date.now();
  localStorage.setItem('userId', userId);
  localStorage.setItem('username', username);

  return { success: true, userId: userId, username: username };
}

// 登录（本地模式）
async function cloudLogin(username, password) {
  // 本地模式：简单验证用户名不为空即可
  if (!username || username.trim().length === 0) {
    throw new Error('用户名不能为空');
  }

  // 模拟登录成功
  const userId = 'local-' + Date.now();
  localStorage.setItem('userId', userId);
  localStorage.setItem('username', username);

  return { success: true, userId: userId, username: username };
}

// 退出登录
function cloudLogout() {
  localStorage.removeItem('userId');
  localStorage.removeItem('username');
}

// 从云端加载数据（本地模式）
async function cloudLoadData() {
  // 本地模式：数据已经在 localStorage 中，直接返回成功
  return { success: true, message: '本地模式：数据已在浏览器中' };
}

// 保存数据到云端（本地模式）
async function cloudSaveData(dataType, dataValue, category = null) {
  // 本地模式：数据已经通过 saveState() 保存到 localStorage，无需额外操作
  return { success: true, message: '本地模式：数据已自动保存到浏览器' };
}

// 删除云端数据（本地模式）
async function cloudDeleteData(id) {
  // 本地模式：数据已经通过 localStorage 管理，无需额外操作
  return { success: true, message: '本地模式：数据已在浏览器中管理' };
}

// 同步本地数据到云端（本地模式）
async function syncToCloud() {
  if (!isLoggedIn()) {
    return { success: false, message: '未登录' };
  }

  // 本地模式：数据已经在 localStorage 中，无需同步
  return { success: true, message: '本地模式：数据已自动保存到浏览器' };
}

// 从云端同步到本地（本地模式）
async function syncFromCloud() {
  if (!isLoggedIn()) {
    return { success: false, message: '未登录' };
  }

  // 本地模式：数据已经在 localStorage 中，加载即可
  return { success: true, message: '本地模式：数据已从浏览器加载' };
}
