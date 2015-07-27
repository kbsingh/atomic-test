#!/bin/bash

service docker start

cat << EOF >> answers.conf
[general]
provider = kubernetes

[helloapache-app]
image = centos/httpd # optional: choose a different image
hostport = 80        # optional: choose a different port to expose
EOF

echo "Running projectatomic/helloapache"
atomic run projectatomic/helloapache

#echo "Checking kubernetes pod"
#kubectl --server=localhost:80 get pod helloapache

echo "Running curl"

echo "Exiting"
exit 0
