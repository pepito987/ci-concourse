#!/bin/sh

echo "run ansible"
ls -R
echo "#####################"
cd playbooks
ansible-playbook playbooks/hello_world.yaml

cd ..
touch out/test.txt
ls -R
echo "#####################"

cat /tmp/testfile.txt