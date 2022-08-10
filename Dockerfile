# getting baseimage ubuntu
FROM node:apline


RUN . /public

WORKDIR /public

CMD [ "echo", "Hello World.."]
