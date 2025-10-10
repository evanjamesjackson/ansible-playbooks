#!/bin/bash

if [ -n $1 ]
then
	ansible-playbook --verbose --ask-vault-pass "$@"
else
    ansible-playbook --verbose --ask-vault-pass site.yml
fi
