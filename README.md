# IlyaBabkin_infra
IlyaBabkin Infra repository

Дополнительное задание:Предложить вариант решения для подключения из консоли при помощикоманды вида ssh someinternalhost из локальной консоли рабочегоустройства,   чтобы   подключение   выполнялось   по   алиасуsomeinternalhost и внести его в README.md в вашем репозитории

Answer:
V ~/.ssh/config propisivayu:

Host someinternalhost
        Hostname 10.128.0.26
        ProxyCommand ssh 84.252.128.131 -W %h:%p

Configuration:

bastion_IP = 178.154.200.23
someinternalhost_IP = 10.128.0.26

Cloud-testapp homework:

testapp_IP = 178.154.254.208
testapp_port = 9292

Command for startup script (CLI):

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=metadata.yml

  Packer homework done:

  Packer srcipts added
  VM made
  reddit url - http://178.154.206.223:9292/

  Terraform homework #1 added
  VM made
  reddit app - http://217.28.229.109:9292/

  Terraform homework #2 added :
  	Terraform modules (app, db) added
  	Terraform stage and PROD added

  Ansible homework #1 added :
  	Ansible was installed
  	first-playbook was created
  Ansible homework #2 added :

  	Playbooks for app, db was created
  	Provisioners for Packer were Updated
  	New Terraform environment was created

  Ansible homewework #3 added :

  	Created roles
  	Added Environments
  	Using Nginx
  	Using Ansible Vault
