#!/bin/bash

SERVICE_NAME="cadvisor"
CADVISOR_PORT="8181"

create() {
    docker service create \
    --name "$SERVICE_NAME" \
    --mount "type=bind,source=/,destination=/rootfs,readonly" \
    --mount "type=bind,source=/var/run,destination=/var/run" \
    --mount "type=bind,source=/sys,destination=/sys,readonly" \
    --mount "type=bind,source=/var/lib/docker/,destination=/var/lib/docker,readonly" \
    --publish "$CADVISOR_PORT:8080" \
    "google/cadvisor"
}

delete() {
    docker service rm "$SERVICE_NAME"
}

update() {
    delete
    create
}

case "$1" in
    delete)
        delete
    ;;
    create)
        create
    ;;
    update)
        update
    ;;
    
    *)
        echo "Usage: $(basename "$0") {create, update, delete}"
        exit 1
esac

exit 0