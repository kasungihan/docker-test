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
