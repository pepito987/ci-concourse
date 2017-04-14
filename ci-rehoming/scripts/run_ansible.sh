#!/bin/sh

echo "run ansible"
cd playbooks
ansible-playbook playbooks/hello_world.yaml

cat /tmp/testfile.txt