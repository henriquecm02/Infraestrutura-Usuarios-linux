# Infraestrutura como Código - Criação de Usuários, Grupos e Diretórios

Projeto desenvolvido como parte do bootcamp Santander Linux para Iniciantes da DIO.

Este script automatiza a criação de uma estrutura de diretórios, usuários e grupos no sistema Linux, além da configuração de permissões de acesso.

## Funcionalidades

- Criação dos diretórios: `/publico`, `/adm`, `/ven` e `/sec`
- Criação dos grupos: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Criação de usuários e associação a seus respectivos grupos
- Definição de permissões apropriadas para cada diretório
- Configuração automática de senha padrão (`Senha123`) para todos os usuários

## Pré-requisitos

- Sistema operacional Linux
- Acesso root para execução do script

## Como usar

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    ```
2. Acesse o diretório do projeto:
    ```bash
    cd seu-repositorio
    ```
3. Torne o script executável:
    ```bash
    chmod +x infraestrutura.sh
    ```
4. Execute o script como root:
    ```bash
    sudo ./infraestrutura.sh
    ```

## Autor

Henrique Couto Machado
