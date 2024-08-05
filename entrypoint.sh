#!/bin/sh

# 获取环境变量中的端口值
PORT=${KARIN_SUPPORT_PORT}
# 配置文件路径
CONFIG_FILE="/home/karin/config/config/server.yaml"

# 检查配置文件是否存在
if [ -f "$CONFIG_FILE" ]; then
    # 查找并替换 render: [] 为 render: [http://karin-support:PORT/puppeteer/]
    sed -i "s|render: \[\]|render:\n  - http://karin-support:${PORT}/puppeteer/|g" "$CONFIG_FILE"
fi

# 运行项目
cd /home/karin
pnpm install -p
npx karin .
