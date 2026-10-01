# 动态渲染速查（Playwright 最小可用）

> 静态抓取（`static_fetch.py`）搞不定的页面——内容由 JS 渲染、需要滚动加载、
> 或要模拟点击——就用动态渲染。本页只讲"装起来、跑起来"的最小路径，
> 不在本炉强行安装浏览器（体积大、按需自装）。

## 安装

```bash
pip install playwright
playwright install chromium        # 下载 Chromium（约 150MB，一次性）
# 可选：playwright install firefox webkit
```

## 最小代码（同步版，存成 dynamic_demo.py 跑）

```python
from playwright.sync_api import sync_playwright

with sync_playwright() as p:
    browser = p.chromium.launch(headless=True)
    page = browser.new_page(user_agent="taichu-rongwanwu-study/1.0")
    page.goto("https://example.com", wait_until="networkidle")
    page.wait_for_selector("body")          # 等关键节点出现
    print("标题:", page.title())
    # 滚动加载：滚到底，等 1 秒，重复 3 次
    for _ in range(3):
        page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
        page.wait_for_timeout(1000)
    print(page.content()[:2000])            # 渲染后的完整 HTML
    browser.close()
```

## 什么时候用动态、什么时候别用

- 用动态：SPA 页面、懒加载列表、需要登录态（先 `browser.new_context(storage_state=...)` 存登录态复用）。
- 别用动态：静态页能搞定就别上浏览器——动态渲染慢 10~100 倍、吃内存、容易被风控。
- 进阶路线：`examples/` 之外，清单里的 [crawl4ai](https://github.com/unclecode/crawl4ai)（LLM 友好的 Markdown 抽取）、[scrapy](https://github.com/scrapy/scrapy)（大规模分布式）、[ddddocr](https://github.com/sml2h3/ddddocr)（验证码识别）按需取用，见 `sources/spider_15.json`。

## 合规声明

只针对公开页面做学习性抓取；遵守 robots.txt 与站点条款，控制频率；
不收录、不编写任何针对特定站点的破解/绕过脚本。
