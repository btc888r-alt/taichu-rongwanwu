# 太初熔万物

> 炼丹炉开炉了。
>
> 这口炉子不炼丹，炼的是**工具**：把 GitHub 上 60 个热门 AI 库、19 个逆向工程库
> （APK 占 11 席）、15 个签到脚本库、15 个爬虫库里的**药材**——词表、命令手册、
> 部署套路、构建笔记——按"对中文创作者有没有用"一味一味投进来，
> 熔成几件趁手的小东西：网文风格检查器、APK 逆向速查、签到部署指南、
> 爬虫快查、C/Java/Node 最小构建链。
>
> 炉规只有三条：**只链来源，不抄代码**；**有名无实的如实标注**；
> **定向破解脚本不炼**（通用技术可以学，针对特定站点的绕过不收）。

## 目录结构

```
太初熔万物/
├── novel_lint.py      # v3：中文网文章节稿件风格检查（零依赖）
├── INDEX.md           # 五清单总索引（105 条目，含去重与诚实声明）
├── sources/           # 6 份原始 JSON（采集数据原样存放）
├── reverse/
│   ├── apk_lab.md         # APK 逆向工具链速查（13 工具原创整理）
│   └── setup_apk_lab.sh   # 一键下载 jadx/apktool 官方 release 并校验
├── qiandao/
│   └── guide.md           # 签到脚本部署指南（青龙/Docker/Actions + 15 库索引）
├── spider/
│   ├── quickstart.md      # 爬虫快查：静态→动态→进阶三步
│   └── examples/
│       ├── static_fetch.py    # 标准库静态抓取示例
│       └── dynamic_render.md  # Playwright 动态渲染最小代码
├── polyglot/
│   ├── hello.c / Hello.java / hello.js
│   └── test_polyglot.sh   # 一键编译运行（缺啥装啥）
└── README.md
```

## 模块说明

**novel_lint.py（v3）** —— 中文网文章节稿件风格检查器，零依赖。
两档设计：✗ 硬性违规（字数/段落/黑名单，退出码 1），~ AI 味告警（中英文
词库按每千字密度判定，只告警不影响退出码）。v3 新增英文 AI 套话 4 组
（40 词，大小写不敏感全词匹配），词源自 60 个热门 AI 库 survey 中真正含
写作资源的 5 个（f/prompts.chat、x1xhlol/system-prompts、caveman、
deer-flow、awesome-llm-apps 方法论）。

**INDEX.md** —— 五清单总索引：AI 60、逆向 19、签到 15、爬虫 15、多语言
构建笔记 16，共 105 条目。每条含 star、链接、一句话、可整合度
（直接可用/思路参考/有名无实），附去重剔除说明与诚实声明。

**reverse/apk_lab.md + setup_apk_lab.sh** —— APK 逆向工具链速查：
jadx、apktool、frida、objection、MobSF、androguard、ghidra、radare2、
mitmproxy 外加 LSPosed、APKiD、FRIDA-DEXDump、mariana-trench，
每工具一句话用途+安装命令+常用命令；脚本一键搭好 jadx/apktool 环境。

**qiandao/guide.md** —— 签到脚本部署指南：青龙面板、Docker、GitHub Actions
三种部署方式说明，15 个热门签到库索引（含部署方式与状态标注：
活跃/已归档/部分失效/删库风险），并注明京东系暂无代表。

**spider/** —— 爬虫快查：`quickstart.md` 给静态→动态→进阶三步路径；
`examples/static_fetch.py` 是只用标准库的抓取示例；
`examples/dynamic_render.md` 是 Playwright 最小代码。炉规：只抓公开页面，
不收录站点专用破解脚本。

**polyglot/** —— C/Java/Node 最小构建链：三个 hello 程序各自介绍自己在
炉里的角色（C=逆向快刀，Java=安卓正门，Node=自动化胶水），
`test_polyglot.sh` 一键检查工具链、缺啥装啥、编译运行。

## 诚实声明

1. **AI 榜 60 个里 55 个是纯 infra**：按 GitHub "ai" 关键词 star 排序如实
   survey 的结果——顶流 AI 库本来就是框架和平台，写作资源天然稀缺。
   真正产出可用词表的只有 5 个，且全是**英文**词（40 条），中文 AI 味词库
   仍是 v2 的 6 个中文来源。
2. 任务简报中提到的 blader/humanizer、marketingskills、cherry-studio 三个
   名字在交付的 `sources_30.json` 里不存在，没有合并、无从合并，特此说明。
3. 签到库状态来自采集期仓库描述的文字证据，非实时核验；动手前请看一眼仓库页。
4. 本炉文档均为原创整理，只链来源、不抄代码；各仓库 License 以其仓库页为准。

## 致谢

炼丹的药材来自以下仓库（按清单分组，排名不分先后，完整索引见 [INDEX.md](INDEX.md)）：

- **AI 写作资源**：[f/prompts.chat](https://github.com/f/prompts.chat)、
  [x1xhlol/system-prompts-and-models-of-ai-tools](https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools)、
  [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman)、
  [bytedance/deer-flow](https://github.com/bytedance/deer-flow)、
  [Shubhamsaboo/awesome-llm-apps](https://github.com/Shubhamsaboo/awesome-llm-apps)
- **逆向/APK**：[skylot/jadx](https://github.com/skylot/jadx)、
  [iBotPeaches/Apktool](https://github.com/iBotPeaches/Apktool)、
  [frida/frida](https://github.com/frida/frida)、
  [sensepost/objection](https://github.com/sensepost/objection)、
  [MobSF/Mobile-Security-Framework-MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF)、
  [androguard/androguard](https://github.com/androguard/androguard)、
  [NationalSecurityAgency/ghidra](https://github.com/NationalSecurityAgency/ghidra)、
  [radareorg/radare2](https://github.com/radareorg/radare2)、
  [mitmproxy/mitmproxy](https://github.com/mitmproxy/mitmproxy)、
  [LSPosed/LSPosed](https://github.com/LSPosed/LSPosed)、
  [rednaga/APKiD](https://github.com/rednaga/APKiD)、
  [hluwa/FRIDA-DEXDump](https://github.com/hluwa/FRIDA-DEXDump)（已归档）、
  [facebook/mariana-trench](https://github.com/facebook/mariana-trench)、
  [dnSpy/dnSpy](https://github.com/dnSpy/dnSpy)（已归档，仅作说明）
- **签到/爬虫/多语言**：完整 46 条见 [INDEX.md](INDEX.md) 清单三、四、五。

## 测试报告

（以下为本机实际运行结果，非手写。）

### 1. novel_lint.py v3（三样章实测）

样章在 `tests/` 目录，可复跑：`python3 novel_lint.py tests/`。

**clean.txt**（干净章：2090 汉字，10 段）
```
[PASS] clean.txt  汉字2090  段落10

1/1 章通过硬性检查，0 章有 AI 味告警
```
退出码 `0`。干净叙述零告警通过。

**warn.txt**（AI 味重灾章：2303 汉字，11 段；只含 WARN 级内容）
```
[PASS] warn.txt  汉字2303  段落11
       ~ 缓冲副词：7 处（密度 3.0/千字，上限 3/千字；如「微微/缓缓/悄然」）
       ~ 模板微表情：5 处（密度 2.2/千字，上限 0/千字；如「嘴角勾起/勾起一抹/眼底闪过」）
       ~ 套话连接：5 处（密度 2.2/千字，上限 0/千字；如「值得注意的是/综上所述/与此同时」）
       ~ 解释腔：5 处（密度 2.2/千字，上限 0/千字；如「换句话说/说白了/事实上」）
       ~ 文青滥调：10 处（密度 4.3/千字，上限 0/千字；如「无声的呐喊/五味杂陈/意味深长」）
       ~ 公文腔：6 处（密度 2.6/千字，上限 0/千字；如「赋能/抓手/闭环」）
       ~ 模板微表情：嘴角勾起一抹X：1 处
       ~ 模板微表情：眼底闪过一丝X：1 处
       ~ 模板微表情：瞳孔骤缩X：1 处
       ~ 英文浮夸营销腔：4 处（…；来源 f/prompts.chat）
       ~ 英文道德说教与谄媚开场：4 处（…；来源 x1xhlol/system-prompts-and-models-of-ai-tools）
       ~ 英文标题党式比喻：3 处（…；来源 bytedance/deer-flow）

1/1 章通过硬性检查，1 章有 AI 味告警
```
退出码 `0`——12 条告警全部只提示、不拦人，v3 新增的 3 个英文分组
（大小写不敏感、全词匹配）正常开火，且每条都标注了词来源。

**fail.txt**（硬性违规章：2164 汉字，10 段）
```
[FAIL] fail.txt  汉字2164  段落10
       ✗ AI腔：不是……而是……：2 处（如「不是退缩，而是」）
       ✗ AI腔：深吸一口气：1 处（如「深吸一口气」）
       ✗ 分析标签体：4 处（如「情报检索」）
       ✗ 职场系梗（默认删除）：7 处（如「社畜」）

0/1 章通过硬性检查，0 章有 AI 味告警
```
退出码 `1`。两档设计验证通过。

> 实测中发现并修复 v2 的一处正则缺陷：`不是……而是……` 原正则把中文逗号
> 排除在外，导致最常见的"不是 X，而是 Y"（带逗号）写法永远命中不了，
> 而 v2 README 的示例输出却写着能抓住"不是退缩，而是"——代码与文档自相
> 矛盾。v3 已修正为允许逗号，两种写法都能抓（见上 fail.txt 第 1 行）。

### 2. polyglot 三语言（`bash polyglot/test_polyglot.sh`）

```
==> 检查工具链
gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
javac 17.0.20.1
v24.20.0
==> C
--- gcc 编译
--- C 运行
C: 我是炉里的快刀，radare2 与 frida 的母语，专管贴近机器的活。
==> Java
--- javac 编译
--- Java 运行
Java: 我是炉里的铁锤，jadx/apktool/ghidra 都是 Java 写的，专管拆 APK 的重活。
==> Node.js
--- node 运行
Node.js: 我是炉里的胶水，签到脚本和 frida hook 脚本都由我粘合，哪里需要自动化哪里就有我。
====================
通过: 5, 失败: 0
```
5/5 通过。实测发现并修复一个真问题：容器默认 `LANG=C` 时 javac 按
US-ASCII 读源码，中文注释直接编译报错；脚本已改为 `javac -encoding UTF-8`。

> 环境说明：本机系统 apt 在验证时被环境自身的包管理进程长时间占用，
> 导致 `default-jdk-headless` 无法及时装上；验证用的 JDK 是 Temurin 17.0.20.1
> 官方 tarball 直接解压。脚本本身仍以 apt 为主路径（含锁等待重试），
> 在普通机器上会正常走 apt 安装。

### 3. reverse APK 实验台（`bash reverse/setup_apk_lab.sh`）

脚本端到端跑通，可重复运行（第二次跑全部显示"已存在，跳过下载"，
退出码 0）。真实 `--version` 输出：

```
$ reverse/tools/jadx-1.5.6/bin/jadx --version
1.5.6
$ java -jar reverse/tools/bin/apktool.jar --version
3.0.3
```
均为各自 GitHub 官方 release 的最新稳定版直链下载并校验运行。

> 实测中遇到一次 GitHub 偶发限流：apktool jar 第一次下载拿到的是 HTML
> 错误页。脚本已加固——下载后校验文件头是否为 zip（`PK` 魔数），
> 下错直接报错删文件重跑，不再静默通过。
