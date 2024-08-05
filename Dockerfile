FROM node:slim

WORKDIR /home/karin

RUN npm install -g pnpm && \
    pnpm i node-karin --no-cache && npx init

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]