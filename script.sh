#!/bin/bash

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

#Listar grupos de usuários:
#cat /etc/group

sudo useradd -s /bin/bash -d /home/carlos/ -G GRP_ADM carlos
sudo useradd -s /bin/bash -d /home/maria/ -G GRP_ADM maria
sudo useradd -s /bin/bash -d /home/joao/ -G GRP_ADM joao
sudo useradd -s /bin/bash -d /home/debora/ -G GRP_VEN debora
sudo useradd -s /bin/bash -d /home/sebastiana/ -G GRP_VEN sebastiana
sudo useradd -s /bin/bash -d /home/roberto/ -G GRP_VEN roberto
sudo useradd -s /bin/bash -d /home/josefina/ -G GRP_SEC josefina
sudo useradd -s /bin/bash -d /home/amanda/ -G GRP_SEC amanda
sudo useradd -s /bin/bash -d /home/rogerio/ -G GRP_SEC rogerio

#Listar usuários
#cat /etc/passwd

#sudo -u carlos ls -la

sudo chmod 777 /publico
