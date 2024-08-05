FROM node:slim

WORKDIR /home/karin

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh && \
    npm install -g pnpm && \
    pnpm i node-karin --no-cache && npx init

ENTRYPOINT ["bash","/usr/local/bin/entrypoint.sh"]
