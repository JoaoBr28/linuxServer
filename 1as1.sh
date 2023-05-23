#!/bin/bash


echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios ..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd selma -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd liz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd thais -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd maira -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /vend
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
 
echo "fim ....."
