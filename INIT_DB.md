# 数据库初始化说明

## 方法一：在浏览器控制台执行（推荐）

1. 打开 https://essay-helper.pages.dev
2. 按 F12 打开开发者工具
3. 切换到 "Console"（控制台）标签
4. 复制并执行以下代码：

```javascript
// 初始化数据库
fetch('https://essay-helper.pages.dev/api/init-db', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' }
})
.then(r => r.json())
.then(data => {
  console.log('✅ 初始化结果:', data);
  if (data.success) {
    alert(`初始化成功！\n词汇：${data.stats.words}\n句子：${data.stats.sentences}\n总计：${data.stats.total}`);
  } else {
    alert('初始化失败：' + data.error);
  }
})
.catch(err => console.error('❌ 错误:', err));
```

5. 等待执行完成，查看控制台输出

## 方法二：测试词库 API

初始化成功后，执行以下代码测试：

```javascript
// 测试词库 API
fetch('https://essay-helper.pages.dev/api/vocab-library?limit=5')
.then(r => r.json())
.then(data => {
  console.log('✅ 词库数据:', data);
})
.catch(err => console.error('❌ 错误:', err));
```

## 预期结果

- 初始化成功应该显示：
  - 词汇数量：300
  - 句子数量：60
  - 总计：360

## 如果遇到 404 错误

可能是 Cloudflare Pages 还在部署中，请等待 1-2 分钟后重试。
