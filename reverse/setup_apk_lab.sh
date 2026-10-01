#!/usr/bin/env bash
# 太初熔万物 · APK 实验室一键搭建
# 自动下载 jadx 与 apktool 的官方 release，校验 --version，可重复运行。
# 用法：bash reverse/setup_apk_lab.sh
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
TOOLS="$ROOT/tools"
BIN="$TOOLS/bin"
mkdir -p "$BIN"

need() { command -v "$1" >/dev/null 2>&1; }

echo "==> [1/4] 检查 Java（jadx/apktool 运行需要）"
apt_install_java() {
  # 包可解析则直接装；否则先 update（带锁等待，最多等 10 分钟）
  local tries=0
  while ! apt-cache policy default-jre-headless 2>/dev/null \
      | grep -q "Candidate: [0-9]"; do
    tries=$((tries + 1))
    if [ "$tries" -gt 40 ]; then
      echo "    软件源长时间不可用，跳过 Java 安装（jadx/apktool 需手动装 JRE）" >&2
      return 1
    fi
    echo "    等待软件源就绪（$tries/40）…"
    sleep 30
  done
  tries=0
  until DEBIAN_FRONTEND=noninteractive apt-get install -y -qq default-jre-headless; do
    tries=$((tries + 1))
    [ "$tries" -gt 20 ] && echo "    apt 安装失败，请手动安装" >&2 && return 1
    echo "    apt 被占用，30 秒后重试（$tries/20）…"
    sleep 30
  done
}
if ! need java; then
  echo "    未找到 java，尝试 apt 安装 default-jre-headless…"
  apt_install_java || echo "    警告：Java 未装上，后续 --version 校验可能失败"
fi
if need java; then
  java -version 2>&1 | head -1
else
  echo "    当前无 Java，可稍后手动安装 default-jre-headless"
fi

echo "==> [2/4] 下载 jadx（官方 release）"
JADX_URL="$(python3 - <<'EOF'
import json, re, urllib.request
rel = json.load(urllib.request.urlopen(
    "https://api.github.com/repos/skylot/jadx/releases/latest", timeout=30))
for a in rel["assets"]:
    if re.match(r"^jadx-[0-9].*\.zip$", a["name"]):
        print(a["browser_download_url"]); break
EOF
)"
JADX_VER="$(basename "$JADX_URL" .zip)"
if [ -x "$TOOLS/$JADX_VER/bin/jadx" ]; then
  echo "    已存在 $JADX_VER，跳过下载"
else
  echo "    下载 $JADX_URL"
  curl -sSL --retry 3 -o "$TOOLS/$JADX_VER.zip" "$JADX_URL"
  rm -rf "$TOOLS/$JADX_VER"
  unzip -q -o "$TOOLS/$JADX_VER.zip" -d "$TOOLS/$JADX_VER"
fi
if need java; then
  "$TOOLS/$JADX_VER/bin/jadx" --version
else
  echo "    跳过 jadx --version 校验（缺 Java，装好 JRE 后手动跑）"
fi

echo "==> [3/4] 下载 apktool（官方 wrapper + jar）"
if [ ! -x "$BIN/apktool" ]; then
  curl -sSL --retry 3 \
    -o "$BIN/apktool" \
    "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
  chmod +x "$BIN/apktool"
else
  echo "    wrapper 已存在，跳过"
fi
APK_JAR_URL="$(python3 - <<'EOF'
import json, re, urllib.request
rel = json.load(urllib.request.urlopen(
    "https://api.github.com/repos/iBotPeaches/Apktool/releases/latest", timeout=30))
for a in rel["assets"]:
    if re.match(r"^apktool_.*\.jar$", a["name"]):
        print(a["browser_download_url"]); break
EOF
)"
APK_JAR="$(basename "$APK_JAR_URL")"
if [ -f "$BIN/$APK_JAR" ]; then
  echo "    已存在 $APK_JAR，跳过下载"
else
  echo "    下载 $APK_JAR_URL"
  curl -sSL --retry 3 -o "$BIN/$APK_JAR" "$APK_JAR_URL"
  # 校验：jar 本质是 zip，开头必须是 PK；下到 HTML 错误页时直接报错
  if ! head -c 2 "$BIN/$APK_JAR" | grep -q "PK"; then
    echo "    错误：下载到的不是 jar（可能是限流返回的 HTML），已删除，请稍后重跑" >&2
    rm -f "$BIN/$APK_JAR"
    exit 1
  fi
fi
# wrapper 默认找 apktool.jar，做个同名链接指向最新 jar
ln -sf "$APK_JAR" "$BIN/apktool.jar"
if need java; then
  java -jar "$BIN/apktool.jar" --version
else
  echo "    跳过 apktool --version 校验（缺 Java，装好 JRE 后手动跑）"
fi

echo "==> [4/4] 完成"
echo "    jadx : $TOOLS/$JADX_VER/bin/jadx"
echo "    apktool: $BIN/apktool  (jar: $BIN/$APK_JAR)"
echo "    建议 export PATH=\"$BIN:$TOOLS/$JADX_VER/bin:\$PATH\""
