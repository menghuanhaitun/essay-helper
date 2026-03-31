-- 创建用户表
CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 创建用户数据表
CREATE TABLE IF NOT EXISTS user_data (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  data_type TEXT NOT NULL, -- 'score', 'my_word', 'my_sentence'
  data_value TEXT NOT NULL,
  category TEXT, -- 好词好句的分类
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 为用户名创建索引，加快登录查询
CREATE INDEX IF NOT EXISTS idx_users_username ON users(username);

-- 为用户数据创建索引，加快数据查询
CREATE INDEX IF NOT EXISTS idx_user_data_user_id ON user_data(user_id);
CREATE INDEX IF NOT EXISTS idx_user_data_type ON user_data(data_type);

-- 创建词库表
CREATE TABLE IF NOT EXISTS vocab_library (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT NOT NULL, -- 'word' 或 'sentence'
  category TEXT NOT NULL, -- 分类（写景自然、写人外貌等）
  content TEXT NOT NULL, -- 内容
  example TEXT, -- 示例（可选）
  tags TEXT, -- 标签（可选）
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 为词库创建索引，加快查询
CREATE INDEX IF NOT EXISTS idx_vocab_library_type ON vocab_library(type);
CREATE INDEX IF NOT EXISTS idx_vocab_library_category ON vocab_library(category);
