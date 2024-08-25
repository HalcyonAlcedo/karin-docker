FROM node:slim

RUN apt-get update && apt-get install -yq --no-install-recommends git && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /home/karin

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh && \
    npm install -g pnpm && \
    pnpm i node-karin@latest --no-cache && npx init

ENTRYPOINT ["bash","/usr/local/bin/entrypoint.sh"]
