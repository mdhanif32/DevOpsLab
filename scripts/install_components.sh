#!/bin/bash
echo "=================================="
echo "         Install Ansible          "
echo "=================================="
sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
echo
echo
echo "=================================="
echo "         Install Components       "
echo "=================================="
ansible-playbook /vagrant/ansible/setup.yml