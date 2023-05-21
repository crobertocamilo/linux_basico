#!/bin/bash

echo "Criando as pastas..."
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando os grupos de usuários..."
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

#Listar grupos de usuários:
#cat /etc/group

#Para criar usuários com uma senha pré definida "Senha123" use o argumento -p
#    Em algumas distribuições linux (AMZ Linux 2, p.e.) use: -p $(openssl passwd -1 Senha123)

echo "Criando os usuários e adicionando ao respectivo grupo..."
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM carlos
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM maria
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM joao
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN debora
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN sebastiana
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN roberto
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC josefina
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC amanda
sudo useradd -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC rogerio

#Listar usuários
#cat /etc/passwd


echo "Definindo as permissões de acesso às pastas criadas..."
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_SEC /sec
sudo chown root:GRP_VEN /ven

sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /sec
sudo chmod 770 /ven

#Checando se deu certo:

#Verifique se as permissões estão ok para as pasta /publico /adm /sec e /ven
#ls -la

#O usuário carlos é do grupo GRP_ADM então deve ser capaz de ver o conteúdo da pasta /adm
#Mas deve receber aviso de permissão negada ao tentar ver o conteúdo das pastas /sec ou /ven
#sudo -u carlos ls -la publico adm sec ven

#Já o usuário amanda, deve conseguir listar somente as pastas /publico e /sec
#sudo -u amanda ls -la publico adm sec ven