#!/bin/bash

if [ $# -ne 0 ]
then
	ansible-playbook --verbose --ask-vault-pass "$@"
else
    ansible-playbook --verbose --ask-vault-pass ./playbooks/all.yml
fi
