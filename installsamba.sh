#!/bin/bash
#Direitos autorais CosmosTI.
#Desevolvido pelo Clube da Tecnologia.
#dev        :Guilherme Pacheco
#criado     :28/06/2012

#editado por: Guilherme Pacheco	
#editado    : 28/06/2012

#Script para preparação do servidor do samba

#dar poder
#sudo su
#comando para reconfiguara o dash marcar NO
# dpkg-reconfigure dash
#remove apparmor e ferramentas

#só para servidor de testes
sudo mkdir /media/minhapasta
sudo mkdir /media/temp

sudo apt-get install samba -y

sudo wget https://github.com/guilhermepachecod/installsamba/smb.conf

sudo service smbd stop

sudo cp smb.conf /etc/samba/smb.conf

#adiciona usuario para o samba
echo "Escolha a senha para outrousuario"
sudo useradd outrousuario -p outrousuario -d /home/outrousuario
sudo smbpasswd -a outrousuario

sudo rm -f smb.conf

sudo service smbd start

#exit

