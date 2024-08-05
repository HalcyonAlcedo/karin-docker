#!/bin/bash

set -e

# 获取环境变量中的端口值
PORT=${KARIN_SUPPORT_PORT}

if [ -z "$PORT" ]; then
  echo "KARIN_SUPPORT_PORT 环境变量未设置"
  PORT=7005
fi

# 配置文件路径
CONFIG_FILE="/home/karin/config/config/server.yaml"
DEFCONFIG_FILE="/home/karin/node_modules/node-karin/config/defSet/server.yaml"

# 检查配置文件是否存在
if [ ! -f "$CONFIG_FILE" ]; then
    cp "$DEFCONFIG_FILE" "$CONFIG_FILE"
    # 查找并替换 render: [] 为 render: [http://karin-support:PORT/puppeteer/]
    sed -i "s|render: \[\]|render:\n  - http://karin-support:${PORT}/puppeteer/|g" "$CONFIG_FILE"
fi

# 运行项目
cd /home/karin
pnpm install -p
npx karin .
