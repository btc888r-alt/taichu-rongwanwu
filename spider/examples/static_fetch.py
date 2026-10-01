#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
极简静态抓取示例（只用 Python 标准库，无需安装任何依赖）。

功能：抓取一个公开静态页面，提取 <title> 与正文段落，打印出来。
用法：python3 static_fetch.py https://example.com

合规声明：
  - 仅用于学习 urllib/正则基本功与抓取"公开页面"。
  - 请遵守目标站点的 robots.txt 与服务条款，控制请求频率，
    不要抓取需要登录/付费/绕过验证的内容。
"""
import re
import sys
import urllib.request

HEADERS = {"User-Agent": "taichu-rongwanwu-study/1.0 (learning only)"}


def fetch(url, timeout=15):
    req = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        raw = resp.read()
    # 先从 Content-Type 猜编码，猜不到就按 utf-8 解，容错 errors="replace"
    ctype = resp.headers.get("Content-Type", "")
    m = re.search(r"charset=([\w-]+)", ctype)
    enc = m.group(1) if m else "utf-8"
    return raw.decode(enc, errors="replace")


def clean_html(s):
    s = re.sub(r"(?is)<script.*?</script>|<style.*?</style>", "", s)
    s = re.sub(r"(?s)<!--.*?-->", "", s)
    s = re.sub(r"<br\s*/?>", "\n", s)
    s = re.sub(r"</p\s*>|</h[1-6]\s*>|</li\s*>", "\n", s)
    s = re.sub(r"<[^>]+>", "", s)
    s = re.sub(r"&nbsp;", " ", s)
    s = re.sub(r"&(lt|gt|amp|quot);",
               lambda m: {"lt": "<", "gt": ">",
                          "amp": "&", "quot": '"'}[m.group(1)], s)
    return s


def main(url):
    html = fetch(url)
    title = re.search(r"(?is)<title>(.*?)</title>", html)
    print("标题:", clean_html(title.group(1)).strip() if title else "(无)")
    print("-" * 40)
    body = re.search(r"(?is)<body.*?>(.*)</body>", html)
    text = clean_html(body.group(1) if body else html)
    paras = [p.strip() for p in text.splitlines() if p.strip()]
    for p in paras[:20]:
        print(p[:120])
    if len(paras) > 20:
        print(f"…（共 {len(paras)} 段，只显示前 20 段）")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("用法: python3 static_fetch.py <URL>")
        sys.exit(2)
    main(sys.argv[1])
