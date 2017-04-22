#!/bin/sh

echo "run ansible green test"

ansible-playbook ansible/playbooks/hello_world.yaml

echo "destroy done" >> out/out.txt

cat out/out.txt