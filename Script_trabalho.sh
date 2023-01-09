#!/bin/bash

echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários"

useradd carlos -c "Carlos veio" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM 

useradd maria -c "Maria Joaquna" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd joao -c "Joao Sao" -m -s /bin/bash -p $(openssl passwd 123)   -G GRP_ADM

useradd debora -c "Debora pinto" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd sebastiana -c "Santa Sebastiana" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -c "Josefina dos Santos" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

useradd amanda -c "Amanda a braba" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

useradd rogerio -c "Dj rogerinho" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Setando permissões dos diretórios"

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec

chmod 777 /publico

echo "Esse script foi rodado com sucesso"
