# getting baseimage ubuntu
FROM node:16.16-alpine3.16

RUN addgroup app && adduser -S -G app app

USER app

WORKDIR /app

COPY . .

RUN npm install

ENV NODE_ENV=production

EXPOSE 3000

