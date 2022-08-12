# docker-test

what you need to know on docker

## what is docker

platform building, running and shipping application(consistently). when you work with team member your envrionment and team enviroment are too different and also deployment server
version mismatch, file missiong and different configuration settings.

one click setup application: `docker-composer up` isolate env with one image

kernal have different os api

## vm vs container

container an isolated enviroment for running an appliction
multiple app, lightweight, one host, start quickly

vm an abstraction of a machine (physical hardware)
hypervisors kernal layer - virualbox - VMware - hyper-v(windowns)

full copy of os, slow to start, limet by resources hardware

docker maintain a Dockerfile that could be image creating file application need

### list docker image and container

`docker image ls`
`docker container ls`

### create and run dockerfile to image

`docker run <imagename>`

- cut down os
- third party libraies
- application files
- enviroment variables

### run only existing image

`docker run <imageID>`

### list of process or containers

running: `docker ps`

- isolated envoronment
- can be stopped and restarted
- is just a os process

### how to docker image push to docker repository

1. create account docker hub or login
2. create repository for your project
3. follow this docs: https://docs.docker.com/docker-hub/repos/
4. name your local image to usename/repository
   `docker image tag d583c3ac45fd usename/repository:latest`
5. push to docker hub
   `docker push <usename>/<repository>`
6. if you to run this another machine install docker with compatibale version
   `docker pull <usename>/<repository>`
7. run image
   `docker run <usename>/<repository>` or `docker run <imageID>`

we must need to learn linux basic command

linux distribution

- ubuntu
- debian
- alpine
- ferdora
- centos

package managers on dev tools

- npm
- yarm
- pip
- NuGet

linux distribute package manager

- apt list

filesystem and structures

- etc = editable text configuation
- lib = library

.bashrc file is

manage users
`useradd -m gihan` or `adduser kasun` // more interactive
`grep -i /etc/passwd`
`usermod -s /bin/bash gihan`

`groupadd dev`
`cat /etc/group`
`usermod -G dev gihan`

play with debian distribution container
`docker run debian`

### interacting with container

`docker run -it <imagename>`
`docker exec <containerID> bash`
`docker exec -it -u john <containerID> bash`

if you change something on container after exited container changes are not anymore there we have to write presistans layer

### start same container again

`docker start -i <containerID>`

### follow the docker sample docs for writing evey progarm lanuages

https://docs.docker.com/samples/

### docker build react app learn dockerfile

#### 1st update 'Dockerfile'

`FROM node:16.16-alpine3.16`

then run and create image

`docker build -t react-app .`

run created image alpine go inside, do not have bash only can use sh
`docker run -it react-app sh`

#### 2nd update 'Dockerfile' | put project file to docker image related to that project

```
WORKDIR /app

COPY . .

ADD https://.../file.json .

ADD file.zip . // automatically uncompresed

```

#### 3rd we don't need to copy node_modules folder `.dockeringore >> node_modules/`

#### 4th run commands

```
RUN npm install
RUN apt install python
```

#### 5th env variables

```
ENV NODE_ENV=production
```

check by `printenv` command on container

#### 5th exposing ports

add user on alpine

```
RUN addgroup app && adduser -S -G app app

USER app
```
