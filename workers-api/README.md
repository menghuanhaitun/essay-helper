# 作文助手 Workers API

这是作文助手的 Cloudflare Workers 后端 API。

## 功能

- 用户注册/登录
- Token 验证
- 用户数据同步（积分、好词好句）

## 本地开发

```bash
# 安装依赖
npm install

# 本地开发
npm run dev
```

## 部署步骤

### 1. 创建 D1 数据库

```bash
npx wrangler d1 create essay-helper-db
```

复制输出的 `database_id`，更新 `wrangler.toml` 中的配置。

### 2. 初始化数据库

```bash
npx wrangler d1 execute essay-helper-db --file=./schema.sql
```

### 3. 部署 Workers

```bash
npm run deploy
```

### 4. 更新前端配置

部署成功后，Workers 会分配一个 URL（如 `https://essay-helper-api.your-subdomain.workers.dev`）。

在前端 `cloud-api.js` 中更新：

```javascript
const CLOUD_API_BASE = 'https://essay-helper-api.your-subdomain.workers.dev';
```

## API 端点

### 注册
- **POST** `/api/register`
- Body: `{ username, password }`
- Response: `{ success, userId, username, token }`

### 登录
- **POST** `/api/login`
- Body: `{ username, password }`
- Response: `{ success, userId, username, token }`

### 验证 Token
- **POST** `/api/verify`
- Body: `{ token }`
- Response: `{ valid, userId, username }`

### 加载数据
- **GET** `/api/user-data?userId={userId}`
- Response: `{ success, data: { score, myWords, mySentences } }`

### 保存数据
- **POST** `/api/user-data`
- Body: `{ userId, dataType, dataValue, category }`
- Response: `{ success, id }`

### 删除数据
- **DELETE** `/api/user-data/{id}?userId={userId}`
- Response: `{ success }`
