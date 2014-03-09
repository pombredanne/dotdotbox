#!/bin/bash
ansible-playbook -v -i ansible_hosts -l local inst.yml $1

