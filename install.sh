#!/bin/bash

# add "--connection=local" to run it in your local desktop
ansible-playbook -v -i ansible_hosts -l local ddbox.yml $1

