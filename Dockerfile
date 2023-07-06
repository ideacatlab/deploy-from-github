FROM node:18

LABEL org.opencontainers.image.source = "https://github.com/ideacatlab/deploy-from-github"

RUN apk add --no-cache git \
 && npm i -g caprover \
 && npm cache clean --force

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
