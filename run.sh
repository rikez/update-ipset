#!/bin/sh

docker run --name update-ipset -it -d --restart=always  -v /tmp/update-ipset:/etc/firehol/ipsets --net=host update-ipset
