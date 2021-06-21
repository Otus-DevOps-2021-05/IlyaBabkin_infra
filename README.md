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
