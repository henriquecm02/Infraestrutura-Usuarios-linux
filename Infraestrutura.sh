#!/bin/bash

# Valida se o script está sendo executado como root
if [ "$EUID" -ne 0 ]
  then echo "Por favor, execute como root."
  exit
fi

echo "Iniciando criação de diretórios..."

# Diretórios
mkdir -p /publico /adm /ven /sec

echo "Diretórios criados com sucesso."

echo "Criando grupos de usuários..."

# Grupos
for grupo in GRP_ADM GRP_VEN GRP_SEC
do
    if ! getent group $grupo > /dev/null 2>&1; then
        groupadd $grupo
    fi
done

echo "Grupos criados com sucesso."

echo "Criando usuários e adicionando aos respectivos grupos..."

# Função para criar usuário
criar_usuario() {
    usuario=$1
    grupo=$2
    useradd "$usuario" -m -s /bin/bash -p "$(openssl passwd -crypt Senha123)" -G "$grupo"
    echo "Usuário $usuario criado e adicionado ao grupo $grupo."
}

# Usuários
criar_usuario carlos GRP_ADM
criar_usuario maria GRP_ADM
criar_usuario joao GRP_ADM

criar_usuario debora GRP_VEN
criar_usuario sebastiana GRP_VEN
criar_usuario roberto GRP_VEN

criar_usuario josefina GRP_SEC
criar_usuario amanda GRP_SEC
criar_usuario rogerio GRP_SEC

echo "Usuários criados com sucesso."

echo "Definindo permissões de diretórios..."

# Permissões
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script concluído com sucesso!"
