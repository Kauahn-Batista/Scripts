# Script de Criação de Estrutura de Usuários, Diretórios e Permissões.

#!/bin/bash

echo "Criando Pastas..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários com os Grupos Já Definidos..."
useradd user1 -c "User1" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_ADM
useradd user2 -c "User2" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_ADM
useradd user3 -c "User3" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -g GRP_ADM

useradd user4 -c "User4" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_VEN
useradd user5 -c "User5" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_VEN
useradd user6 -c "User6" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_VEN

useradd user7 -c "User7" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_SEC
useradd user8 -c "User8" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_SEC
useradd user9 -c "User9" -m -s /bin/bash -p $(openssl passwd -6 "Senha123") -G GRP_SEC

echo "Definindo o Acesso as Pastas e Nível de Permissão..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!!!"
