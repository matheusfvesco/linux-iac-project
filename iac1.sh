#!/bin/bash

echo "Creating dirs..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users and adding them to groups..."
echo "Passwords will be requested when user first logins"

useradd carlos -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_ADM
passwd carlos -e
useradd maria -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_ADM
passwd maria -e
useradd joao -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_ADM
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_VEN
passwd debora -e
useradd sebastiana -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_VEN
passwd sebastiana -e
useradd roberto -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_VEN
passwd roberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_SEC
passwd josefina -e
useradd amanda -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_SEC
passwd amanda -e
useradd rogerio -m -s /bin/bash -p $(openssl passwd password1234) -G GRP_SEC
passwd rogerio -e

echo "Managing permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finished running."
