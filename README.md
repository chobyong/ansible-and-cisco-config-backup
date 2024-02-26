# ansible-and-cisco-config-backup
Using Ansible to backup Cisco device
- Purpose is to use ansible to backup cisco device configuration and seve to github repo.
## what you will need.
  - need to have an github account
  - ssh login to github with public key `$ ssh -T git@github.com`
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
 * use following [Ansible version release](https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html)
 * `pip3 install ansible==2.9.10`
- `ansible-galaxy collection install ansible.netcommon`
# github and directory ready
* backup file saved to <directoty>/backup folder
* wil need to run few commands to begin
  ~~~
  mkdir backup
  cd backup
  git init
  git
  git add .
  git commit -m "initial commit"
  git remote add origin youruser@yourserver.com:/path/to/my_project.git
  git push origin master
  ~~~ 
# cisco-backup.sh is created to run cronjob with python venv
runs every 6 hours 
~~~
crontab -e
0 */6 * * * sh /home/ubuntu/ansible-config-backup/cisco/cisco-backup.sh
~~~
