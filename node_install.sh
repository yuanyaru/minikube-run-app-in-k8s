#!/usr/bin/bash

cd /usr/local/bin
# 下载 nodejs 安装包并解压
wget https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz
tar xvf node-v8.11.4-linux-x64.tar.xz
# 创建软链接，以便全局使用
ln -s node-v8.11.4-linux-x64/bin/node /usr/local/bin/node
ln -s node-v8.11.4-linux-x64/bin/npm /usr/local/bin/npm
# 验证
node -v
npm -v
