#!/bin/bash



addgroup aluno

addgroup professor

addgroup gerente
 
mkdir -p /srv

chown root:gerente /srv
 
mkdir -p /srv/alunos

mkdir -p /srv/professores
 
chown root:aluno /srv/alunos

chown root:professor /srv/professores
 
chmod 751 /srv

chmod 770 /srv/alunos

chmod 770 /srv/professores
 
adduser --disabled-login --ingroup professor --home /srv/professores/bruno bruno

mkdir -p /srv/professores/bruno

chown bruno:professor /srv/professores/bruno
 
usermod -aG gerente bruno
 
adduser --disabled-login --ingroup aluno --home /srv/alunos/joao joao

mkdir -p /srv/alunos/joao

chown joao:aluno /srv/alunos/joao
 
adduser --disabled-login --ingroup aluno --home /srv/alunos/maria maria

mkdir -p /srv/alunos/maria

chown maria:aluno /srv/alunos/maria
 
usermod -e 2051-04-25 -f 90 joao

usermod -e 2051-04-25 -f 90 maria
 
