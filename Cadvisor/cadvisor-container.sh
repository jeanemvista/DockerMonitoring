#!/bin/bash

docker run \
	-v /:/rootfs:ro \
	-v /var/run:/var/run:rw \
	-v /sys:/sys:ro \
	-v /var/lib/docker/:/var/lib/docker:ro \
	-p 8181:8080 -d \
	google/cadvisor