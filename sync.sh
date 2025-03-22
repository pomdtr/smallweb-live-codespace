#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "usage: sync.sh <username>" > /dev/stderr
    exit 1
fi

USERNAME=$1
mutagen sync create \
    --name=smallweb \
    --ignore=node_modules \
    --ignore-vcs \
    --mode=two-way-resolved \
    $USERNAME@smallweb.live:smallweb ./smallweb
