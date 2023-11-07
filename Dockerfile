# Dockerfile
# 使用 Node.js 的官方镜像作为基础镜像
FROM node:18-alpine

# 创建并设置应用目录为工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json（如果可用）
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制所有文件到工作目录
COPY . .

# 构建应用
RUN npm run build

# 应用运行在 3000 端口，对外开放此端口
EXPOSE 3000

# 运行命令
CMD ["node", "dist/main"]

