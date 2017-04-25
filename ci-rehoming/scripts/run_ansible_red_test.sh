#!/bin/sh

echo "run ansible failing test"

ansible-playbook ansible/playbooks/fail.yaml

cp ci-concourse/ci-rehoming/scripts/message/message.txt out