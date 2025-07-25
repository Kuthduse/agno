FROM alpine:3.20

# 安装必要依赖（bash, curl, coreutils, procps 等）
RUN apk add --no-cache bash curl coreutils procps grep

# 拷贝脚本并赋权
COPY agno.sh /app/agno.sh
RUN chmod +x /app/agno.sh

# 设置工作目录
WORKDIR /app

# 启动容器即执行脚本
ENTRYPOINT ["/app/agno.sh"]
