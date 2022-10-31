FROM node:10-alpine

RUN npm install pm2 -g

RUN apk update

RUN apk add dcron curl jq

WORKDIR /usr/src/app

ADD . /usr/src/app

RUN npm install --production

EXPOSE 3000

RUN chmod +x line_token.sh entrypoint.sh

CMD ["/bin/sh", "/usr/src/app/entrypoint.sh"]
