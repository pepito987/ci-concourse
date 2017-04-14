#!/bin/sh

echo "Say Something"
ls -R
cd playbooks
ansible-playbook playbooks/hello_world.yaml

cat /tmp/testfile.txt