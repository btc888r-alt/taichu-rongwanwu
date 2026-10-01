# 签到脚本部署指南

> 把"每天打开一堆 App 点签到"变成服务器/手机自动跑。
> 本指南为原创整理：三种部署方式的说明 + 15 个热门签到仓库索引。
> 索引数据来自 `sources/qiandao_15.json`；状态标注依据采集期仓库描述中的文字证据（如"已归档""不再维护"），动手前请再看一眼仓库页确认实时状态。

## 三种部署方式

### 方式一：青龙面板（最主流）
青龙是一个定时任务管理面板，签到脚本的"旅馆"：脚本丢进去、配好环境变量（一般是 Cookie/Token）、设个 cron 表达式，每天自动跑。
- 适合：`linbailo/zyqinglong`、`hex-ci/smzdm_script` 这类"拉库即用"的脚本合集。
- 典型流程：`ql repo <仓库地址>` 订阅拉库 → 面板"环境变量"里填 Cookie（抓包获取）→ 定时规则默认即可。
- 优点：Web 界面管理、多账号、通知推送（Bark/Telegram/钉钉/企业微信）一条龙。
- 注意：Cookie 会过期，脚本失效多半是"站点改接口"或"Cookie 过期"，先更新 Cookie 再怀疑人生。

### 方式二：Docker（一台机器一个容器，隔离干净）
- 适合：自带 WebUI 的重型项目，如 `qd-today/qd`（HAR 录制转签到任务）、`Cp0204/quark-auto-save`（夸克签到+转存）、`Sitoi/dailycheckin`、`MoeNetwork/Tieba-Cloud-Sign`（需 MySQL，docker-compose 一键起）。
- 典型流程：`docker run` / `docker-compose up -d` → 浏览器开 WebUI 配账号 → 定时任务内置。
- 优点：环境隔离、不污染宿主机、重装即删容器；群晖/NAS 用户尤其顺手。

### 方式三：GitHub Actions（白嫖云端定时）
- 适合：轻量脚本，如 `millylee/anyrouter-check-in`（Fork 后配密钥，workflow 每 6 小时跑一次）。
- 典型流程：Fork 仓库 → Settings → Secrets 配账号密钥 → Actions 里手动触发验证 → 靠 schedule 定时跑。
- 优点：零服务器成本；缺点：公开仓库注意别把密钥写进代码（用 Secrets），以及 Actions 免费额度与"定时任务可能被延迟"。

### 其他形态（一句话）
- **iOS 代理工具生态**（`blackmatrix7/ios_rule_script`）：Loon/Surge/Quantumult X + BoxJS，手机端直接跑，适合苹果用户。
- **Xposed 模块**（`LuckyPray/XAutoDaily`）：安卓 root/LSPosed 环境，在 QQ 客户端里做全自动签到。
- **Auto.js**（`bjc5233/autojs`）：安卓端脚本，一个 App 一个 `.js`，Tasker 定时触发。
- **预编译二进制**（`insoxin/China-Telecom-Helper`，Go 编写）：下载即跑，cron 定时，零依赖。
- **Telegram 框架**（`amchii/tg-signer`）：pip 装完当签到机器人用，还能顺手做消息监控。
- **单文件零依赖**（`88lin/workbuddy-auto-signin`）：纯标准库 Python，读本机登录态鉴权，拷贝即用。

## 15 仓库索引

| 仓库 | 覆盖 | 部署 | 状态 |
|---|---|---|---|
| [blackmatrix7/ios_rule_script](https://github.com/blackmatrix7/ios_rule_script) | iOS 代理工具生态多 App 签到 | Loon/Surge/QX + BoxJS；服务端 Node/青龙 | 活跃 |
| [Sitoi/dailycheckin](https://github.com/Sitoi/dailycheckin) | 16+ 站点每日签到 | Docker / 青龙 / 群晖 / PyPI | 活跃 |
| [qd-today/qd](https://github.com/qd-today/qd) | HAR 录制转定时签到任务（框架） | Docker / 直接 python / 自带 WebUI | 活跃 |
| [Cp0204/quark-auto-save](https://github.com/Cp0204/quark-auto-save) | 夸克网盘签到+转存一条龙 | Docker（WebUI :5005） | 活跃 |
| [MoeNetwork/Tieba-Cloud-Sign](https://github.com/MoeNetwork/Tieba-Cloud-Sign) | 百度贴吧云签到 | Docker-Compose / PHP 上传部署 | 活跃 |
| [linbailo/zyqinglong](https://github.com/linbailo/zyqinglong) | 滴滴系+生活薅羊毛 | 青龙拉库 | 活跃 |
| [cxOrz/chaoxing-signin](https://github.com/cxOrz/chaoxing-signin) | 超星学习通签到（含拍照/位置/监听） | Node 本地 / Docker / Web 版 | **已归档**（作者 2023-06-10 起不再维护，靠社区 PR） |
| [hex-ci/smzdm_script](https://github.com/hex-ci/smzdm_script) | 什么值得买签到+任务 | 青龙拉库 / 本地 cron | 活跃 |
| [LuckyPray/XAutoDaily](https://github.com/LuckyPray/XAutoDaily) | QQ 全家桶签到（Xposed 模块） | LSPosed/太极激活 | **删库风险**（作者声明可能停止更新/删库，用前先 fork） |
| [bjc5233/autojs](https://github.com/bjc5233/autojs) | 约 20 个 App 签到（Auto.js） | Auto.js App + Tasker | **部分失效**（部分脚本已标注 TODO/失效，App 更新快） |
| [millylee/anyrouter-check-in](https://github.com/millylee/anyrouter-check-in) | AI 中转平台多账号签到 | GitHub Actions | 活跃 |
| [emby-keeper/emby-keeper](https://github.com/emby-keeper/emby-keeper) | 50+ Emby 站点保号签到 | Docker / PyPI / HF Space | 活跃 |
| [insoxin/China-Telecom-Helper](https://github.com/insoxin/China-Telecom-Helper) | 电信 App 金豆任务 | 预编译二进制 + cron | **部分失效**（依赖服务器已关，2023-05 后不再维护） |
| [amchii/tg-signer](https://github.com/amchii/tg-signer) | Telegram 机器人签到框架 | pip / Docker | 活跃 |
| [88lin/workbuddy-auto-signin](https://github.com/88lin/workbuddy-auto-signin) | WorkBuddy 每日积分 | 本机定时任务（零依赖单文件） | 活跃 |

## 缺口与提醒

- **京东系暂无代表**：15 个里没有以京东签到为主的仓库（autojs 顺带覆盖京东 App）。需要的话后续单独搜"京东签到 青龙"补位。
- **通用排查顺序**：脚本不跑了 → 先看通知/日志报错 → 八成是 Cookie 过期或站点改接口 → 更新 Cookie / 等作者修；归档/删库风险的库先 fork 到自己名下再部署。
- **只做自己账号的签到**：别拿脚本去刷别人的号，封号了别怪炉子。
