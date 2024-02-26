#!/bin/bash
# cd /home/mypc/awesomeproject
# source venv/bin/activate
# python myawesomepythonscript.py
source /home/ubuntu/ansible-config-backup/cisco/vCisco/bin/activate
ansible-playbook -i /home/ubuntu/ansible-config-backup/cisco/inventory.ini /home/ubuntu/ansible-config-backup/cisco/cisco-backup.yml
