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

sudo mkdir /media/hd2

#só para servidor de testes
sudo mkdir /media/hd2/Meus
sudo mkdir /media/hd2/Meus/filmes
sudo mkdir /media/hd2/Meus/pro

sudo apt-get install samba -y

sudo wget http://10.0.0.102/files.tar
sudo tar xvf files.tar
sudo rm -f files.tar

sudo service smbd stop

sudo cp smb.conf /etc/samba/smb.conf

#adiciona usuario para o samba
echo "Escolha a senha para rede"
sudo useradd rede -p rede -d /home/rede
sudo smbpasswd -a rede

sudo rm -f httpd.conf
sudo rm -f apache2.conf
sudo rm -f php.ini
sudo rm -f pptpd.conf
sudo rm -f chap-secrets
sudo rm -f proftpd.conf
sudo rm -f shells
sudo rm -f smb.conf
sudo rm -f settings.json
sudo rm -f my.cnf
sudo rm -f star_tile2.gif
sudo rm -f VelvetDrop2.otf
sudo rm -f VelvetDrop.otf
sudo rm -f index.html
sudo rm -f fstab
sudo rm -R /home/ftp

sudo service smbd start

#exit

