#!/bin/sh

echo "run ansible failing test"

cp ci-concourse/ci-rehoming/scripts/message/message.txt out
ansible-playbook ansible/playbooks/fail.yaml

