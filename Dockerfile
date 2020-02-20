FROM node:12.6.0-alpine

RUN npm install -g @quasar/cli

RUN apk update; apk upgrade; apk add --no-cache git;

WORKDIR /app

COPY ./entrypoint-quasar.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "quasar" ]
