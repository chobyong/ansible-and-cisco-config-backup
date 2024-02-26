# ansible-and-cisco-config-backup
Using Ansible to backup Cisco device
- Purpose is to use ansible to backup cisco device configuration and seve to github repo.
## prequsit
  - need to have an github account
  - ssh login with public key
  - ansible
  - python
# inventory.ini file
- ansible_connection=network_cli  is to connect to a host using "ssh"
- ansible_connection=telnet  is to connect to a host using "Telnet"
# python virtual environment
~~~
$pip3 -m venv vCisco
~~~
- activete virtual environment
  `$ source vCisco/bin/activate` to activate
# install ansible
* having latest one may not be compatible with installed python version and need to validate
 * use following link as reference [[https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html]]
 * 
# github and directory ready
* backup file saved to <directoty>/backup folder
* wil need to run few commands to begin
  ~~~
  $git init
  $git 
