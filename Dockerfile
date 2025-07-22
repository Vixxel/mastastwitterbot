# syntax=docker/dockerfile:1

FROM node:20.19.4
ENV NODE_ENV=production

WORKDIR /

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "main.js" ]
