#!/bin/bash

if [ -z $1 ]
then
    ansible-playbook --verbose --ask-vault-pass site.yml
else
    ansible-playbook --verbose --ask-vault-pass playbooks/$1.yml
fi
