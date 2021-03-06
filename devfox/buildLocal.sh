#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

sudo ansible-playbook -i ansible/hosts ansible/playbook.yml -c local
