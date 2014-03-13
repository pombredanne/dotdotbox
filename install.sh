#!/bin/bash

# add "--connection=local" to run it in your local desktop
ansible-playbook -vvvv -i ansible_hosts -l local ddbox.yml $1

