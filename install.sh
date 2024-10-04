#!/bin/bash

set -eux

sudo apt update
sudo apt install -y software-properties-common python3 python3-pip
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
sudo pip3 install ansible-dev-tools wcmatch
ansible-galaxy install -r roles/requirements.yml