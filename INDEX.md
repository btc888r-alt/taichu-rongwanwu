# 五清单总索引（INDEX）

> 太初熔万物开炉时扔进来的全部药材，一共 5 份清单、105 个条目。
> 原始数据原样存放在 `sources/` 目录（6 个 JSON），下表是人工阅读版。
> 可整合度三档：**直接可用**（有现成词表/脚本/命令手册可抄）、**思路参考**（方法论、评估框架、资源导航）、**有名无实**（名气大，但对本项目无实质可取）。

## 清单一：AI 热门库 60（`sources/sources_30.json`）

| # | 仓库 | Star | 一句话 | 可整合度 |
|---|---|---|---|---|
| 1 | [openclaw/openclaw](https://github.com/openclaw/openclaw) | 391125 | 个人 AI 助手基础设施（网关/通道/agent 运行时），无写作风格资源；docs/prose.md 只是迁移说明，真 | 有名无实（纯 infra/框架，与写作无关） |
| 2 | [obra/superpowers](https://github.com/obra/superpowers) | 293764 | 面向代码 agent 的软件开发方法论 skill 集；skills/writing-skills/ 是关于“写 Age | 有名无实（纯 infra/框架，与写作无关） |
| 3 | [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) | 250514 | 自学习 AI agent 基础设施（模型适配器/TUI/网关），纯工程代码，无写作风格指南或词表。 | 有名无实（纯 infra/框架，与写作无关） |
| 4 | [n8n-io/n8n](https://github.com/n8n-io/n8n) | 206433 | AI 工作流自动化平台（可视化画布+1500+集成），纯工具/infra 类仓库，无写作风格资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 5 | [Significant-Gravitas/AutoGPT](https://github.com/Significant-Gravitas/AutoGPT) | 187634 | 自主 AI agent 平台（新版平台+旧版 agent 代码），纯 agent 框架/工程代码，无写作风格指南或词表。 | 有名无实（纯 infra/框架，与写作无关） |
| 6 | [firecrawl/firecrawl](https://github.com/firecrawl/firecrawl) | 187438 | 网页数据抓取 API 与 Agent 抓取技能库，全部是 scrape/search/extract 相关 infra  | 有名无实（纯 infra/框架，与写作无关） |
| 7 | [f/prompts.chat](https://github.com/f/prompts.chat) | 171795 | ChatGPT 提示词收集库，含一条 'Prompt for Humanizing AI Text (English V | 直接可用（提取 12 条词） |
| 8 | [AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui) | 165172 | Stable Diffusion 图像生成 Web UI，prompt 相关仅是图像生成参数（attention 语法、 | 有名无实（纯 infra/框架，与写作无关） |
| 9 | [Snailclimb/JavaGuide](https://github.com/Snailclimb/JavaGuide) | 159001 | Java 后端面试知识库（中文），内容全是 Java/数据库/分布式面试题，无写作风格、套话或 AI 腔相关资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 10 | [langgenius/dify](https://github.com/langgenius/dify) | 157664 | AI 应用开发与工作流平台（RAG/Agent 编排 infra），代码搜索无 humanizer/slop/风格指南命 | 有名无实（纯 infra/框架，与写作无关） |
| 11 | [msitarzewski/agency-agents](https://github.com/msitarzewski/agency-agents) | 155589 | AI 客服/营销 agent 人格提示词集（marketing-book-co-author、sales-proposa | 有名无实（纯 infra/框架，与写作无关） |
| 12 | [open-webui/open-webui](https://github.com/open-webui/open-webui) | 153717 | 自托管 AI 聊天界面前端（backend/src/svelte 前端项目），无写作风格指南/词表。 | 有名无实（纯 infra/框架，与写作无关） |
| 13 | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | 149993 | 代码极简主义 agent skill（以 LOC/token/成本为基准的代码瘦身工具，skills 为 code au | 有名无实（纯 infra/框架，与写作无关） |
| 14 | [langchain-ai/langchain](https://github.com/langchain-ai/langchain) | 147353 | 纯 agent 开发框架（libs/ 下核心库），顶层无 prompts/风格/词表目录，无写作相关资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 15 | [x1xhlol/system-prompts-and-models-of-ai-tools](https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools) | 143996 | AI 工具系统提示词泄露合集，含明确的写作风格禁令：Perplexity 的禁用短语清单（道德说教/模糊措辞短语）与 C | 直接可用（提取 9 条词） |
| 16 | [Shubhamsaboo/awesome-llm-apps](https://github.com/Shubhamsaboo/awesome-llm-apps) | 140475 | 包含 first-reader skill：完整的草稿 beta-reading 写作评估 rubric（速读门槛/注意 | 直接可用（提取 0 条词） |
| 17 | [github/spec-kit](https://github.com/github/spec-kit) | 139681 | 纯软件工程工具：spec-driven 开发流程模板（spec/plan/tasks），面向 AI 编程而非散文写作，无 | 有名无实（纯 infra/框架，与写作无关） |
| 18 | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | 132241 | 纯 UI/UX 设计 skill（界面推理规则与幻灯片营销文案说服公式），与网文写作风格/AI 腔检查无关。 | 有名无实（纯 infra/框架，与写作无关） |
| 19 | [harry0703/MoneyPrinterTurbo](https://github.com/harry0703/MoneyPrinterTurbo) | 127868 | AI 短视频一键生成工具，仅含一条视频文案生成 prompt 的格式约束，无写作风格指南、禁用词表或去 AI 味资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 20 | [microsoft/generative-ai-for-beginners](https://github.com/microsoft/generative-ai-for-beginners) | 120890 | 微软官方生成式 AI 入门教程（21 课），讲如何用 LLM/RAG/agent 开发应用，无 AI 腔词表、风格评估或 | 有名无实（纯 infra/框架，与写作无关） |
| 21 | [earendil-works/pi](https://github.com/earendil-works/pi) | 110995 | AI agent / coding-agent 基础设施（统一 LLM API、agent loop、TUI），纯工程代 | 有名无实（纯 infra/框架，与写作无关） |
| 22 | [supabase/supabase](https://github.com/supabase/supabase) | 110973 | Postgres 开发平台（数据库后端/前端全栈），无写作风格指南、词表或评估资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 23 | [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | 108685 | viral 极简表达 style skill：skills/caveman/SKILL.md 给出完整简洁表达风格指南， | 直接可用（提取 13 条词） |
| 24 | [google-gemini/gemini-cli](https://github.com/google-gemini/gemini-cli) | 107215 | 纯 AI 编程助手终端工具仓库，代码/evals 均围绕 agent 工具调用与安全行为测试，没有 prompt 风格指 | 有名无实（纯 infra/框架，与写作无关） |
| 25 | [rasbt/LLMs-from-scratch](https://github.com/rasbt/LLMs-from-scratch) | 105844 | 《Build a Large Language Model》教学书配套代码仓库，从零用 PyTorch 实现 GPT 类 | 有名无实（纯 infra/框架，与写作无关） |
| 26 | [karpathy/autoresearch](https://github.com/karpathy/autoresearch) | 97100 | Karpathy 的单卡 nanochat 自主研究实验仓库（train.py + program.md），纯 ML 训 | 有名无实（纯 infra/框架，与写作无关） |
| 27 | [hacksider/Deep-Live-Cam](https://github.com/hacksider/Deep-Live-Cam) | 96911 | 实时换脸/一键视频 deepfake 工具仓库，纯计算机视觉 infra，没有写作相关 prompt、风格指南或禁用词资 | 有名无实（纯 infra/框架，与写作无关） |
| 28 | [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers) | 95747 | 纯精选目录仓库，收录 MCP 服务器清单，无 prompt 模板/词表/写作指南类可提取资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 29 | [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) | 95085 | Claude Code 持久记忆压缩基础设施，无写作风格/词表/评估相关资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 30 | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) | 91706 | 虽名「反套话品味」但实为前端 UI 设计品味 skill（布局/配色/动效），其 banned-pattern 仅针对代 | 有名无实（纯 infra/框架，与写作无关） |
| 31 | [infiniflow/ragflow](https://github.com/infiniflow/ragflow) | 91578 | 开源 RAG 检索增强生成引擎（文档检索/问答 infra），无写作风格指南或词表资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 32 | [PaddlePaddle/PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR) | 90489 | OCR 文档结构化工具仓库，其 skills/ 仅是文档解析与文本识别技能，无写作/去AI味资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 33 | [OpenHands/OpenHands](https://github.com/OpenHands/OpenHands) | 89707 | AI 软件开发 agent（自托管开发者控制中心），其 agent skill 全为代码开发类（代码审查/前端/e2e  | 有名无实（纯 infra/框架，与写作无关） |
| 34 | [odysseus-dev/odysseus](https://github.com/odysseus-dev/odysseus) | 88154 | 自托管 AI 工作台（聊天/agent/文档编辑/邮件/日历），文档编辑器内置 prompt 仅文档清理、表单填充等通用 | 有名无实（纯 infra/框架，与写作无关） |
| 35 | [koala73/worldmonitor](https://github.com/koala73/worldmonitor) | 87653 | 实时全球情报仪表盘（AI 新闻聚合/地缘政治监控），skill 全部为情报采集类（能源/国家风险/新闻摘要等），无写作风 | 有名无实（纯 infra/框架，与写作无关） |
| 36 | [Panniantong/Agent-Reach](https://github.com/Panniantong/Agent-Reach) | 87198 | 给 AI agent 接入互联网能力的网页抓取/浏览工具（后端、通道、cookie 提取），无写作风格指南、AI 腔词表 | 有名无实（纯 infra/框架，与写作无关） |
| 37 | [fighting41love/funNLP](https://github.com/fighting41love/funNLP) | 83609 | 中文 NLP 词库与资源导航合集（停用词、成语、缩写库等）；其敏感词表指向外部仓库且本身不是 AI 腔词表，全库无“AI | 有名无实（纯 infra/框架，与写作无关） |
| 38 | [bytedance/deer-flow](https://github.com/bytedance/deer-flow) | 83299 | skills/public 下有写作类 agent skill：academic-paper-review（含写作评估  | 直接可用（提取 6 条词） |
| 39 | [lobehub/lobehub](https://github.com/lobehub/lobehub) | 82946 | AI Agent 组织与聊天平台（Next.js 应用基础设施），无写作风格指南、prompt 写作模板或 AI 腔词表 | 有名无实（纯 infra/框架，与写作无关） |
| 40 | [netdata/netdata](https://github.com/netdata/netdata) | 80773 | 基础设施可观测性平台（监控/告警），无任何写作、风格指南或词表类资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 41 | [dair-ai/Prompt-Engineering-Guide](https://github.com/dair-ai/Prompt-Engineering-Guide) | 78762 | 通用提示词工程教程站（zero-shot/CoT等技巧与分类/代码类模板），无写作风格指南、无AI腔词表、无humani | 有名无实（纯 infra/框架，与写作无关） |
| 42 | [unslothai/unsloth](https://github.com/unslothai/unsloth) | 77110 | 本地LLM微调/训练工具链（含Studio本地UI），无写作风格指南、无AI腔词表、无写作相关可整合资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 43 | [AppFlowy-IO/AppFlowy](https://github.com/AppFlowy-IO/AppFlowy) | 77046 | 协作文档/笔记应用（Flutter客户端），doc目录仅为项目文档，无写作风格指南、无AI腔词表等可整合资源。 | 有名无实（纯 infra/框架，与写作无关） |
| 44 | [nomic-ai/gpt4all](https://github.com/nomic-ai/gpt4all) | 73568 | 本地 LLM 运行与训练框架（gpt4all-chat/training/bindings），仓库中只有聊天模板引擎文档 | 有名无实（纯 infra/框架，与写作无关） |
| 45 | [daytonaio/daytona](https://github.com/daytonaio/daytona) | 71675 | AI agent 代码沙箱基础设施仓库（2026-06 起已停止维护归档，HEAD 仅剩 README + assets | 有名无实（纯 infra/框架，与写作无关） |
| 46 | [docling-project/docling](https://github.com/docling-project/docling) | 68254 | 文档解析/格式转换基础设施库（PDF/DOCX转结构化文本），无写作相关prompt、风格指南或词表（原榜单第66位补位 | 有名无实（纯 infra/框架，与写作无关） |
| 47 | [shanraisshan/claude-code-best-practice](https://github.com/shanraisshan/claude-code-best-practice) | 66932 | 纯 Claude Code 编码工程实践仓库（subagent/command/skill、编排工作流、最佳实践），目录 | 有名无实（纯 infra/框架，与写作无关） |
| 48 | [usestrix/strix](https://github.com/usestrix/strix) | 65880 | 开源 AI 渗透测试工具，prompt 均为渗透测试方法论（scope/system_prompt），无任何写作风格或  | 有名无实（纯 infra/框架，与写作无关） |
| 49 | [virattt/ai-hedge-fund](https://github.com/virattt/ai-hedge-fund) | 63823 | AI 对冲基金教育项目，全仓库无 prompt/风格文件（strategies/ 只是交易策略 YAML 配置），无可提 | 有名无实（纯 infra/框架，与写作无关） |
| 50 | [mvanhorn/last30days-skill](https://github.com/mvanhorn/last30days-skill) | 63330 | 跨 Reddit/X/YouTube/HN 的舆情研究搜索 skill，产出调研简报，references 仅含简报 H | 有名无实（纯 infra/框架，与写作无关） |
| 51 | [upstash/context7](https://github.com/upstash/context7) | 62577 | 代码文档 MCP 服务（为 LLM 提供最新库文档），skills 均为文档检索类，无写作风格或去 AI 味资源（原榜单 | 有名无实（纯 infra/框架，与写作无关） |
| 52 | [BerriAI/litellm](https://github.com/BerriAI/litellm) | 59990 | LLM 网关 infra，唯一的 banned_keywords.py 只是用户自定义关键词过滤的机制代码（非实际词表） | 有名无实（纯 infra/框架，与写作无关） |
| 53 | [meilisearch/meilisearch](https://github.com/meilisearch/meilisearch) | 59455 | 纯 Rust 搜索引擎 infra 仓库（索引/检索实现），无任何 prompt 模板、写作风格指南或 AI 腔词表资源 | 有名无实（纯 infra/框架，与写作无关） |
| 54 | [twentyhq/twenty](https://github.com/twentyhq/twenty) | 57785 | 开源 CRM 业务系统（仓库内 SKILLS.md/技能均为 CRM 应用开发与运维技能），无写作风格指南、禁用词表或去 | 有名无实（纯 infra/框架，与写作无关） |
| 55 | [zylon-ai/private-gpt](https://github.com/zylon-ai/private-gpt) | 57558 | 本地模型 RAG API 层，其 prompts/ 模板仅为 agent 编排与摘要系统提示（thinking 指南、循 | 有名无实（纯 infra/框架，与写作无关） |
| 56 | [hugohe3/ppt-master](https://github.com/hugohe3/ppt-master) | 57254 | PPTX幻灯片生成workflow仓库，SKILL.md的文本规则均为版式/视觉类（inline emphasis、ki | 有名无实（纯 infra/框架，与写作无关） |
| 57 | [jamiepine/voicebox](https://github.com/jamiepine/voicebox) | 56102 | 开源 AI 语音工作室（声音克隆/语音生成/听写），无写作风格资源（原榜单第87位补位）。 | 有名无实（纯 infra/框架，与写作无关） |
| 58 | [vercel/ai](https://github.com/vercel/ai) | 27076 | TypeScript AI SDK 框架；仓库内 skills/ 仅为 SDK 开发辅助技能（迁移/测试脚手架），无任何 | 有名无实（纯 infra/框架，与写作无关） |
| 59 | [dataease/dataease](https://github.com/dataease/dataease) | 24564 | 开源 BI 数据可视化分析平台（Java 后端+前端），纯数据分析/图表工具类仓库，无写作风格相关资源 | 有名无实（纯 infra/框架，与写作无关） |
| 60 | [13o-bbr-bbq/machine_learning_security](https://github.com/13o-bbr-bbq/machine_learning_security) | 2094 | 机器学习安全（对抗样本、渗透测试工具 DeepExploit/GyoiThon）学习资源合集，纯技术安全内容，无写作相关 | 有名无实（纯 infra/框架，与写作无关） |

**小结**：60 个里 55 个是纯 AI infra（框架/平台/工具链），与中文写作风格检查无实质交集；真正产出可用写作资源的只有 5 个（f/prompts.chat、x1xhlol/system-prompts-and-models-of-ai-tools、JuliusBrussee/caveman、bytedance/deer-flow 的英文 AI 套话词表，以及 Shubhamsaboo/awesome-llm-apps 的 beta-reading 评估框架）。已合并进 `novel_lint.py` v3 的 `ai_style_en` 分组，每组注释标注来源。

## 清单二：逆向工程 19（`sources/reverse_15.json` + `sources/reverse_apk_extra_4.json`）

其中 APK 方向占 11 席：jadx、Apktool、frida、MobSF、objection、androguard、Awesome-Android-Reverse-Engineering、LSPosed、APKiD、FRIDA-DEXDump、mariana-trench。

| 仓库 | Star | 一句话 | 可整合度 |
|---|---|---|---|---|
| [NationalSecurityAgency/ghidra](https://github.com/NationalSecurityAgency/ghidra) | 80149 | NSA 开源的软件逆向工程（SRE）框架，集反汇编/反编译/图形化分析/脚本化于一体的二进制分析工作台，是桌面逆向领域的 | 直接可用 |
| [skylot/jadx](https://github.com/skylot/jadx) | 50702 | Android Dex/APK 反编译为 Java 源码的工具（命令行 jadx + 图形界面 jadx-gui），AP | 直接可用 |
| [x64dbg/x64dbg](https://github.com/x64dbg/x64dbg) | 49668 | 开源 Windows 用户态调试器，专为无源码可执行文件的逆向工程与恶意软件分析优化，是动态调试的代表工具。 | 直接可用 |
| [mitmproxy/mitmproxy](https://github.com/mitmproxy/mitmproxy) | 45212 | 支持 TLS 拦截的交互式 HTTP/1、HTTP/2、WebSocket 代理，面向渗透测试与协议逆向的流量抓包改写工 | 直接可用 |
| [zhaoxuya520/reverse-skill](https://github.com/zhaoxuya520/reverse-skill) | 39204 | 面向 AI agent 的逆向工程/授权渗透技能路由包：当 agent 遇到 APK、二进制、JS 加密、CTF 或渗透 | 思路参考（agent 路由剧本） |
| [dnSpy/dnSpy](https://github.com/dnSpy/dnSpy) | 29672 | .NET 调试器与程序集编辑器：可在无源码情况下调试、反编译、编辑 .NET/Unity 程序集（含 IL 级方法体编辑 | 直接可用（已归档，仅取文档） |
| [icsharpcode/ILSpy](https://github.com/icsharpcode/ILSpy) | 26190 | 开源跨平台 .NET 反编译器（IL 转 C#），Windows/Linux/macOS 桌面端 + 多种前端，是 .N | 直接可用 |
| [iBotPeaches/Apktool](https://github.com/iBotPeaches/Apktool) | 25712 | Android APK 逆向的标准工具链：反编译（解码 resources 到近原始形式、生成 smali）与回编译修改 | 直接可用 |
| [radareorg/radare2](https://github.com/radareorg/radare2) | 24908 | 类 UNIX 命令行逆向工程框架：集反汇编、调试、十六进制编辑、文件格式分析、仿真于一体的工具集与库，跨架构二进制逆向的 | 直接可用 |
| [frida/frida](https://github.com/frida/frida) | 22093 | 跨平台动态插桩工具包，移动与桌面逆向的事实标准，APK 动态分析最常用的 hook 引擎。 | 直接可用 |
| [MobSF/Mobile-Security-Framework-MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF) | 21861 | 移动应用安全自动化分析框架，支持 Android、iOS 与 Windows，可一键对 APK 做静态加动态安全分析并输 | 直接可用 |
| [cheat-engine/cheat-engine](https://github.com/cheat-engine/cheat-engine) | 19249 | 面向 PC 游戏修改的内存扫描与调试开发环境，偏桌面端，与 APK 逆向无直接关系，在清单中作对比参照。 | 思路参考（桌面端对比参照） |
| [sensepost/objection](https://github.com/sensepost/objection) | 9419 | 基于 Frida 的移动运行时探索工具，无需手写 Frida 脚本即可对 APK、IPA 做交互式动态分析。 | 直接可用 |
| [androguard/androguard](https://github.com/androguard/androguard) | 6310 | Android 逆向与渗透测试的 Python 工具库，APK 静态分析的经典工具。 | 直接可用 |
| [user1342/Awesome-Android-Reverse-Engineering](https://github.com/user1342/Awesome-Android-Reverse-Engineering) | 2719 | 经典 Awesome 合集：Android 逆向培训、资源、工具精选列表，纯资源导航；适合需要快速找工具/课程/书籍的进 | 思路参考（纯资源导航） |
| [LSPosed/LSPosed](https://github.com/LSPosed/LSPosed) | 22679 | Xposed 继任者：基于 Riru/Zygisk 的 ART Hook 框架，Xposed 模块生态的事实标准 | 直接可用 |
| [rednaga/APKiD](https://github.com/rednaga/APKiD) | 2580 | PEiD for Android：基于 YARA 识别 APK/DEX 的加壳、加固、混淆器与编译器指纹 | 直接可用 |
| [hluwa/FRIDA-DEXDump](https://github.com/hluwa/FRIDA-DEXDump) | 4061 | 基于 Frida 的内存脱壳工具：模糊搜索并转储运行中 App 的 dex（已归档，仍是脱壳标准流程） | 直接可用 |
| [facebook/mariana-trench](https://github.com/facebook/mariana-trench) | 1260 | Meta 开源的 Android/Java 安全静态分析平台：全局污点分析，自动发现 source→sink 漏洞 | 直接可用 |

**去重说明**：reverse-skill（56 个场景技能）与单体工具（jadx/frida 等）是"剧本 vs 工具"的关系，不算功能撞车，予以保留；cheat-engine 为桌面内存修改工具，与 APK 无关，仅作对比参照保留。

## 清单三：签到脚本 15（`sources/qiandao_15.json`）

| 仓库 | Star | 部署方式 | 状态 | 一句话 |
|---|---|---|---|---|
| [blackmatrix7/ios_rule_script](https://github.com/blackmatrix7/ios_rule_script) | 28099 | iOS 端：Loon / Surge / Quantumult X（配合 BoxJS 配置）；服务端 | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | iOS 代理工具（Surge/Loon/Quantumult X）生态的分流规则、重写规则与通用脚本 |
| [Sitoi/dailycheckin](https://github.com/Sitoi/dailycheckin) | 8724 | Docker（官方镜像 sitoi/dailycheckin）、青龙面板、群晖、本地运行、PyPI  | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 开箱即用的每日签到脚本集合，覆盖 16+ 站点，支持 Docker / 青龙面板 / 群晖部署与多账 |
| [qd-today/qd](https://github.com/qd-today/qd) | 5584 | Docker / docker-compose（官方镜像 qdtoday/qd）、直接 python | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | HTTP 请求定时任务自动执行框架：把任意站点的 HAR 录制请求变成可定时执行的签到任务（QD 框 |
| [Cp0204/quark-auto-save](https://github.com/Cp0204/quark-auto-save) | 3053 | Docker（官方镜像 cp0204/quark-auto-save，带 WebUI 管理配置，端口 | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 夸克网盘签到、分享链接自动转存、文件名整理、Emby 媒体库刷新一条龙，带 WebUI 的 Dock |
| [MoeNetwork/Tieba-Cloud-Sign](https://github.com/MoeNetwork/Tieba-Cloud-Sign) | 1974 | Docker-Compose 一键部署（含 MySQL、Web 配置面板）；也支持传统 PHP 网站 | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 百度贴吧云签到：在服务器上配置后全自动完成贴吧签到，配合插件可实现云灌水、点赞、封禁、删帖、审查等管 |
| [linbailo/zyqinglong](https://github.com/linbailo/zyqinglong) | 1923 | 青龙面板订阅仓库拉库（ql repo 订阅，crontab 定时），单个脚本也可本地 cron/手动 | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 青龙面板自用脚本库，主攻滴滴系（出行/加油/代驾领券、签到打卡、滴滴果园）及生活薅羊毛，另含美团、饿 |
| [cxOrz/chaoxing-signin](https://github.com/cxOrz/chaoxing-signin) | 1748 | 本地 Node.js 运行（pnpm start 手动签到 / pnpm monitor 监听自动签 | 已归档（作者 2023-06-10 起不再维护） | 超星学习通签到工具：支持普通签到、拍照签到、手势签到、位置签到、签到码/二维码签到，并有自动监测签到 |
| [hex-ci/smzdm_script](https://github.com/hex-ci/smzdm_script) | 1634 | 青龙面板拉库（ql repo "smzdm_" 前缀），定时执行；纯 Node.js 脚本亦可本地  | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 什么值得买 App 自用脚本：每日签到、转盘/每日抽奖、签到页每日任务（浏览/收藏/点赞/评论/分享 |
| [LuckyPray/XAutoDaily](https://github.com/LuckyPray/XAutoDaily) | 1588 | 安卓端：编译或下载APK，在Xposed/LSPosed/太极等框架中激活模块，在QQ客户端设置中开 | 删库风险（作者声明可能停止更新/删库） | QQ 生态全自动签到 Xposed 模块，覆盖会员任务/黄钻签到/腾讯视频会员打卡/QQ日签卡/小程 |
| [bjc5233/autojs](https://github.com/bjc5233/autojs) | 1473 | 安卓端：Auto.js App内导入脚本执行，作者推荐用Tasker触发autojs.prj.xml | 部分失效（部分脚本标注 TODO/已失效） | Android Auto.js 脚本集，每个.js文件对应一个App的自动签到任务，覆盖百度地图、大 |
| [millylee/anyrouter-check-in](https://github.com/millylee/anyrouter-check-in) | 1405 | GitHub Actions：Fork仓库后在production环境配置ANYROUTER_ACC | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 针对AI中转平台（AnyRouter/AgentRouter，兼容所有NewAPI/OneAPI平台 |
| [emby-keeper/emby-keeper](https://github.com/emby-keeper/emby-keeper) | 1355 | 多种方式：Docker（官方镜像embykeeper/embykeeper，支持docker-com | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | Emby影视服务器社区的签到保号工具：自动完成50+ Emby站点的Telegram机器人每日签到， |
| [insoxin/China-Telecom-Helper](https://github.com/insoxin/China-Telecom-Helper) | 1341 | 本地cron：下载对应平台二进制+填写config.json，用Linux crontab（作者建议 | 部分失效（依赖服务器已关闭，2023-05 后不再维护） | 中国电信App全自动任务工具（Go编译二进制）：每日签到领随机金豆、每月1000金豆领取、喂食宠物、 |
| [amchii/tg-signer](https://github.com/amchii/tg-signer) | 1056 | pip 安装（PyPI）+ 本地 cron/systemd 定时，或 Docker 部署（ghcr. | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | Telegram 电报机器人自动执行框架：每日定时签到、发送消息、点击内联键盘、AI 识别图片点击、 |
| [88lin/workbuddy-auto-signin](https://github.com/88lin/workbuddy-auto-signin) | 906 | 本机定时任务：Windows 任务计划程序（install-windows.ps1 一键安装）/ m | 活跃（采集描述中无异常标记；实时状态以仓库页为准） | 腾讯 WorkBuddy（AI 编程助手）每日签到积分与成长中心奖励自动领取单文件脚本，读取本机桌面 |

**缺口**：京东系签到在 15 个里没有代表性仓库（只有 autojs 顺带覆盖京东 App 签到），如需补，建议后续单独搜 "jd_sign / 京东签到 青龙" 补位。

## 清单四：爬虫 15（`sources/spider_15.json`）

| 仓库 | Star | 语言 | 一句话 | 可整合度 |
|---|---|---|---|---|
| [microsoft/playwright](https://github.com/microsoft/playwright) | 96963 | TypeScript | 微软官方 Web 测试与自动化框架，单 API 驱动 Chromium/Firefox/WebKit 三大浏览 | 直接可用 |
| [unclecode/crawl4ai](https://github.com/unclecode/crawl4ai) | 84607 | Python | 面向 LLM/AI agent 的开源爬虫，把网页转为干净的 LLM-ready Markdown，属方向①基 | 直接可用 |
| [scrapy/scrapy](https://github.com/scrapy/scrapy) | 64543 | Python | Python 语言最成熟的高级爬虫框架，属方向①基础爬虫框架；合规可用。 | 直接可用 |
| [NaiboWang/EasySpider](https://github.com/NaiboWang/EasySpider) | 44626 | JavaScript | 完全免费的可视化无代码爬虫软件，图形化设计执行任务，属方向①基础爬虫框架；合规可用（通用工具非特定站点破解）。 | 直接可用 |
| [SeleniumHQ/selenium](https://github.com/SeleniumHQ/selenium) | 34518 | Java | 浏览器自动化框架与生态（W3C WebDriver 规范基础设施），属于动态渲染（方向②）。 | 直接可用 |
| [apify/crawlee](https://github.com/apify/crawlee) | 25962 | TypeScript | Node.js 端到端网页抓取与浏览器自动化库，属方向①基础爬虫框架；合规可用。 | 直接可用 |
| [gocolly/colly](https://github.com/gocolly/colly) | 25542 | Go | Go 语言轻量优雅的爬虫框架，属方向①基础爬虫框架；合规可用。 | 直接可用 |
| [jhao104/proxy_pool](https://github.com/jhao104/proxy_pool) | 23740 | Python | Python 爬虫代理 IP 池项目，定时采集公开免费代理并验证入库、提供 API/CLI 调用，属于反反爬公 | 直接可用 |
| [sml2h3/ddddocr](https://github.com/sml2h3/ddddocr) | 14809 | Python | 通用验证码识别 OCR SDK（带带弟弟 pypi 版），支持文字识别、目标检测与滑块验证码缺口定位，属于反反 | 直接可用 |
| [crawlab-team/crawlab](https://github.com/crawlab-team/crawlab) | 12276 | Go | Go 编写的分布式爬虫管理平台，支持任意语言与框架（Scrapy/Puppeteer/Selenium 等）， | 直接可用 |
| [code4craft/webmagic](https://github.com/code4craft/webmagic) | 11676 | Java | Java 可扩展爬虫框架，覆盖下载、URL 管理、内容抽取与持久化的全生命周期，属于基础爬虫框架（方向①）。 | 直接可用 |
| [berstend/puppeteer-extra](https://github.com/berstend/puppeteer-extra) | 7405 | JavaScript | puppeteer 的模块化插件体系，核心含公开的浏览器指纹反检测 stealth 插件，属方向③反反爬公开技 | 直接可用 |
| [BruceDone/awesome-crawler](https://github.com/BruceDone/awesome-crawler) | 7321 | 无（文档导航） | 多语言爬虫框架/库资源导航列表（awesome 系列），按语言收录主流爬虫工具，属导航类；纯索引无违规内容，合 | 思路参考（Awesome 导航） |
| [rmax/scrapy-redis](https://github.com/rmax/scrapy-redis) | 5643 | Python | Scrapy 的 Redis 分布式组件（调度器+去重+管道），让多 spider 实例共享队列实现分布式抓取 | 直接可用 |
| [yujiosaka/headless-chrome-crawler](https://github.com/yujiosaka/headless-chrome-crawler) | 5633 | JavaScript | 基于 Headless Chrome（Puppeteer）的轻量分布式爬虫库，专攻 JS 动态渲染页面，属方向 | 直接可用 |

## 清单五：多语言构建笔记 16（`sources/polyglot_notes.json`）

| 仓库 | 语言 | 构建方式 |
|---|---|---|
| [frida/frida](https://github.com/frida/frida) | C | meson + ninja（根目录 meson.build；顶层 Makefile/make 封装），project('frida','c' |
| [nomic-ai/gpt4all](https://github.com/nomic-ai/gpt4all) | C++ | CMake（gpt4all-chat/CMakeLists.txt、gpt4all-backend/CMakeLists.txt；Qt Cr |
| [radareorg/radare2](https://github.com/radareorg/radare2) | C | meson + ninja 为主（根目录 meson.build），传统 sys/install.sh 的 acr/configure +  |
| [rizinorg/cutter](https://github.com/rizinorg/cutter) | C++ | CMake（根目录 CMakeLists.txt）；依赖的 rizin 用 meson 编译（git clone --recurse-sub |
| [x64dbg/x64dbg](https://github.com/x64dbg/x64dbg) | C++ | CMake（根目录 CMakeLists.txt；生成 VS 工程/MSVC 编译），Windows-only 调试器 |
| [Konloch/bytecode-viewer](https://github.com/Konloch/bytecode-viewer) | Java | Maven（pom.xml；mvn package 打包，checkstyle.xml 做代码风格检查） |
| [NationalSecurityAgency/ghidra](https://github.com/NationalSecurityAgency/ghidra) | Java | Gradle（build.gradle + settings.gradle，gradlew 包装器；主任务 gradle buildGhid |
| [dataease/dataease](https://github.com/dataease/dataease) | Java | Maven（根 pom.xml，多模块：core、sdk、drivers、de-xpack 等；core 下分 core-backend（J |
| [iBotPeaches/Apktool](https://github.com/iBotPeaches/Apktool) | Java | Gradle（build.gradle.kts + settings.gradle.kts，gradlew 包装器；模块：brut.apkt |
| [skylot/jadx](https://github.com/skylot/jadx) | Java | Gradle（build.gradle.kts + settings.gradle.kts，gradlew 包装器；多模块：jadx-cor |
| [CherryHQ/cherry-studio](https://github.com/CherryHQ/cherry-studio) | TypeScript | pnpm monorepo（electron-vite 构建 + electron-builder 打包桌面应用；各平台构建脚本） |
| [blackmatrix7/ios_rule_script](https://github.com/blackmatrix7/ios_rule_script) | JavaScript | 无构建（纯脚本；无 package.json、无包管理器文件；script/rule/rewrite 目录为 .js 脚本与 JSON 配置 |
| [google-gemini/gemini-cli](https://github.com/google-gemini/gemini-cli) | TypeScript | npm workspaces（package-lock.json；构建经 node scripts/build.js，用 esbuild 打 |
| [lobehub/lobehub](https://github.com/lobehub/lobehub) | TypeScript | pnpm monorepo（packageManager pnpm@12.4.1；构建为 Next.js + Vite SPA 组合，脚本内 |
| [n8n-io/n8n](https://github.com/n8n-io/n8n) | TypeScript | pnpm monorepo（turbo run build；pnpm-lock + pnpm-workspace.yaml） |
| [openclaw/openclaw](https://github.com/openclaw/openclaw) | TypeScript | pnpm monorepo（自定义 scripts/build-all.mts 统一构建，底层 tsdown 打包；另有 Android g |

**说明**：本炉只实际验证 C / Java / Node.js 三条最小构建链（见 `polyglot/`），重型项目（如 frida 的 meson、ghidra 的 Gradle）的构建说明仅作索引，不在本炉编译。

## 诚实声明

1. AI 榜 60 个里 55 个是纯 infra：这是按 GitHub "ai" 关键词 star 排序如实 survey 的结果，不是我们没认真找——顶流 AI 库本来就是框架和平台，写作资源天然稀缺。
2. `sources_30.json` 中 `extractable=true` 的只有 5 个（英文词表 40 条，无中文词条）。任务简报里提到的 blader/humanizer、marketingskills、cherry-studio 三个名字在交付的 JSON 里不存在，没有合并、无从合并，特此说明。
3. 签到清单的状态来自采集期仓库描述的文字证据（如"已归档""不再维护"），非实时 API 核验，动手前请再看一眼仓库页。
4. 本炉所有文档均为原创整理，只链来源、不抄代码；各仓库的 License 请以其仓库页为准。
