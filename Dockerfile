# getting baseimage ubuntu
FROM ubuntu

MAINTAINER Kasun Gihan >kasungihan.dev@gmail.com>

RUN apt-get update

CMD [ "echo", "Hello World.."]
