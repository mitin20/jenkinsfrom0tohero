#!/bin/bash

echo maven-project-test > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/id_rsa /tmp/.auth vagrant@192.168.1.51:/tmp/.auth
scp -i /opt/id_rsa ./jenkins/deploy/publish vagrant@192.168.1.51:/tmp/publish
ssh -i /opt/id_rsa vagrant@192.168.1.51 "/tmp/publish"
