#!/bin/bash
ansible-playbook -v -i ansible_hosts -l local ddbox.yml $1

