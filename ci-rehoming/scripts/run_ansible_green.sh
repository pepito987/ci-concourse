#!/bin/sh

echo "run ansible green test"

ansible-playbook ansible/playbooks/hello_world.yaml

echo "ansible green done" >> out/out.txt

cat out/out.txt
