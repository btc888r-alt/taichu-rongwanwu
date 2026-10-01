# APK 逆向工具链速查（apk_lab）

> 炉中自备的 APK 逆向工具速查表：每个工具一句话用途、一条安装命令、三到五条最常用的命令。
> 全部为原创整理，命令取自各工具官方文档的公开用法；详细参数请查官方文档。
> 合规提示：仅用于自己应用的安全自测、学习研究与授权测试。

## 静态反编译

### jadx —— Dex/APK 转 Java 源码（事实标准入口）
安装（桌面端直接下官方 release；命令行版解压即用）：
```bash
# 见本目录 setup_apk_lab.sh，一键下载官方 release 并校验 --version
./setup_apk_lab.sh
```
常用：
```bash
jadx -d out/ app.apk            # 反编译到 out/ 目录
jadx-gui app.apk                # 图形界面浏览
jadx --show-bad-code app.apk    # 强制显示反编译失败的方法
jadx -j 4 app.apk               # 4 线程加速
```

### apktool —— APK 解码（resources 近原始还原 + smali）与回编译
安装：见 `setup_apk_lab.sh`（wrapper 脚本 + 官方 jar）。
常用：
```bash
apktool d app.apk -o app_out     # 解码：AndroidManifest/arsc 还原 + smali 落盘
apktool b app_out -o new.apk     # 回编译修改后的目录
apktool d -s app.apk             # 只解码资源，不产出 smali（更快）
apksigner sign --ks my.keystore new.apk   # 回编译后重签名（Android SDK 工具）
```

### androguard —— Python 写的 APK 静态分析库
安装：`pip install androguard`
常用：
```bash
apkparser-ag app.apk             # 解析包元数据、权限、Manifest
dexparser-ag app.apk             # Dalvik 反汇编与方法交叉引用
androguard analyze               # 交互式分析 shell
```
Python 里 `from androguard.core.apk import APK; a = APK("app.apk")` 即可编程分析。

### APKiD —— 加壳/混淆/编译器指纹识别（PEiD for Android）
安装：`pip install apkid`
常用：
```bash
apkid app.apk                    # 输出加固、混淆器、编译器识别结果
apkid -r dir/                    # 递归扫一整个目录
apkid --typing json app.apk      # JSON 输出，接自动化流水线
```
先跑 APKiD 再决定是直接反编译还是走脱壳流程，省一半时间。

### mariana-trench —— Meta 开源的 Android/Java 污点分析平台
安装：源码构建（依赖较多，官方推荐用其 Docker/构建文档，C++ 部分用 buck2）。
常用（概念级，分析 APK 前需先转中间表示）：
```bash
mariana-trench --system-jar-configuration-path=... --apk-path=app.apk
# 核心是 source -> sink 规则：读官方 rules 样例，按“敏感数据源头 → 危险出口”写规则
```
适合批量审计：一次配置，多 APK 自动发现漏洞模式。

## 动态插桩与运行时

### frida —— 跨平台动态插桩（hook 引擎事实标准）
安装：`pip install frida-tools`（另需在手机端跑对应版本的 frida-server）
常用：
```bash
frida-ps -U                      # 列出手机上可 hook 的进程
frida-trace -U -i "open*" com.example.app   # 自动生成 open* 系列 hook 模板
frida -U -l hook.js -f com.example.app      # 以脚本 spawn 目标 App
```
`hook.js` 里 `Java.use("com.example.Foo").bar.implementation = function(){...}` 是 Android Java 层 hook 的标准写法。

### objection —— 基于 frida 的移动运行时探索（不用手写脚本）
安装：`pip install objection`
常用：
```bash
objection -g com.example.app explore          # 交互式探索目标 App
android hooking list classes                  # 枚举类（explore 内命令）
android sslpinning disable                    # 一键绕过 SSL pinning（自测/授权测试用）
android hooking watch class com.example.Foo   # 观察类的方法调用
```

### FRIDA-DEXDump —— 内存脱壳转 dump dex（已归档，但仍是脱壳标准流程）
> 仓库已归档（作者停止维护），但"frida hook 住 dex 加载点、内存转储"的思路仍是当前加固脱壳的标准流程，现状是各家按这个思路自维护 fork。
安装：`git clone https://github.com/hluwa/FRIDA-DEXDump`（归档只读克隆）后 `pip install frida`
常用：
```bash
python main.py -U -f com.example.app   # spawn 模式，自动搜索内存中的 dex 并转储
python main.py -U -N com.example.app   # attach 到已运行进程
# 产出：若干 dex 文件，再用 jadx 打开分析
```

### LSPosed —— Xposed 继任者，ART Hook 框架（模块生态标准）
一句话：给已 root（Magisk/Zygisk）手机装模块的框架，逆向时用来给目标 App 打"运行时补丁"（如去签名校验、日志插桩）。
安装：手机端——Magisk 里刷入官方 release 的 LSPosed zip 包；模块以 APK 形式安装后在 LSPosed 管理器里勾选作用域。
常用（概念级）：
```bash
# 无固定 CLI；标准流程：安装模块 APK → LSPosed 管理器启用 → 勾选目标 App 作用域 → 重启 App
```
配合 Xposed 模块做网络层/签名校验 bypass，是动态分析的常见前置步骤。

## 综合分析平台

### MobSF —— 移动应用安全自动化分析（一键出报告）
安装（推荐 Docker，省掉一堆系统依赖）：
```bash
docker pull opensecurity/mobile-security-framework-mobsf:latest
docker run -it --rm -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest
```
然后浏览器开 `http://localhost:8000`，拖 APK 进去：静态（权限/组件/硬编码密钥/恶意签名）+ 动态（交互插桩/流量）一次跑完出 PDF 报告。

## 通用二进制逆向（APK 含 native .so 时用得上）

### ghidra —— NSA 开源 SRE 框架（反汇编/反编译/脚本化）
安装：官网下 release zip，解压即用（需本机有 JDK 17+）：
```bash
unzip ghidra_*.zip && ./ghidraRun   # 图形界面
```
常用：`File → Import File` 导入 `lib/arm64-v8a/libnative.so` → Auto Analysis → 反编译窗口看 C 伪代码；`Window → Script Manager` 跑 Python/Java 脚本批量标注。

### radare2 —— 命令行逆向瑞士军刀（C 写成，极轻）
安装：`git clone https://github.com/radareorg/radare2 && ./sys/install.sh`（或包管理器 `apt install radare2` 版本较旧）
常用：
```bash
r2 -A libnative.so     # 打开并自动分析
afl                    # 列出全部函数
pdf @ main             # 反汇编 main 函数
iz / izz               # 搜字符串（含宽字符）
```

### mitmproxy —— TLS 拦截代理（抓 App 流量、协议逆向）
安装：`pip install mitmproxy`（或官网下二进制）
常用：
```bash
mitmproxy                  # 交互式 TUI
mitmdump -w flows.cap      # 非交互录制流量到文件
mitmweb                    # 网页版界面
# 手机 Wi-Fi 代理指到本机 8080 端口并安装 mitmproxy CA 证书，即可解密 HTTPS（仅自测设备）
```

## 两句忠告

1. **dnSpy 已归档**：.NET/Unity 逆向转用 ILSpy（跨平台，`dotnet tool install -g ilspycmd`），别在新环境折腾 dnSpy。
2. **加固脱壳的标准思路**：APKiD 先识别加固厂商 → frida hook 脱壳点（或 FRIDA-DEXDump 流程）内存转储 dex → jadx 二次分析。脱壳没有银弹，都是这个 pipeline 的变体。
