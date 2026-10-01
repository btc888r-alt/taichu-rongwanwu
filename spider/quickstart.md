# 爬虫快查（spider/quickstart）

> 炉里的爬虫角：从"静态抓取"到"动态渲染"的最小学习路径，外加 15 个热门爬虫库索引。
> 全部原创示例，不抄任何仓库代码；第三方库只给链接。

## 学习路径（三步）

1. **静态抓取**（本页 + `examples/static_fetch.py`）
   `urllib` 发请求 → 正则/字符串处理提标题正文。零依赖，适合公开静态页练手。
   跑：`python3 examples/static_fetch.py https://example.com`

2. **动态渲染**（`examples/dynamic_render.md`）
   页面靠 JS 渲染、要滚动/点击时，上 Playwright。按文档装完浏览器跑最小代码。

3. **按需进阶**（见 `sources/spider_15.json`，15 个库按 star 排）
   大规模分布式爬取看 [scrapy](https://github.com/scrapy/scrapy)；
   要 LLM 直接读的干净 Markdown 看 [crawl4ai](https://github.com/unclecode/crawl4ai)；
   可视化点选看 [EasySpider](https://github.com/NaiboWang/EasySpider)；
   验证码识别看 [ddddocr](https://github.com/sml2h3/ddddocr)；
   代理池看 [proxy_pool](https://github.com/jhao104/proxy_pool)。

## 合规声明（炉规）

- 只抓公开页面；登录态只用自己的号，频率做人（sleep 是美德）。
- 遵守目标站点的 robots.txt 与服务条款。
- **本炉不收录任何站点专用破解/绕过脚本**——通用技术可以学，定向破解不炼。
