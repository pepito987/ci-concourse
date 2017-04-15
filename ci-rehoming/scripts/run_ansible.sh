#!/bin/sh

echo "run ansible"
ls -R
echo "#####################"
cd playbooks
ansible-playbook playbooks/hello_world.yaml

touch test.txt
cd ..
ls -R
echo "#####################"

cat /tmp/testfile.txt