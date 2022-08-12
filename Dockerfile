# getting baseimage ubuntu
FROM node:16.16-alpine3.16

#RUN addgroup app && adduser -S -G app app

#USER app

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV API_URL=production

EXPOSE 3000

CMD ["npm", "start"] 

