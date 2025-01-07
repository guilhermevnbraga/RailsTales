# Rails Tales

<div>
    <img alt="GitHub commit activity" src="https://img.shields.io/github/commit-activity/t/guilhermevnbraga/railstales">
    <img alt="Último commit" src="https://img.shields.io/github/last-commit/guilhermevnbraga/railstales">
    <img alt="Tamanho do repositório" src="https://img.shields.io/github/repo-size/guilhermevnbraga/railstales">
    <img alt="Github contributors" src="https://img.shields.io/github/contributors/guilhermevnbraga/railstales">
    <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/guilhermevnbraga/railstales">
    <img alt="License" src="https://img.shields.io/github/license/guilhermevnbraga/railstales">
</div>

## Sobre o Rails Tales

O Rails Tales é um blog desenvolvido em Ruby on Rails onde os usuários podem interagir redigindo publicações.

## Funcionalidades

- **Cadastro de usuários:** Permite que os usuários se registrem e editem o seu cadastro.
- **Postagens**: Usuários logados podem realizar postagens, além de editar ou excluir postagens antigas
- **Comentários**: Usuários logados ou não podem fazer comentários nas postagens, com o diferencial que os comentários de usuários não logados são anonimos.
- **Paginação**: As postagens são organizadas em no máximos 3 posts por página.
- **Internacionalização**: O idioma da aplicação muda de acordo com o idioma de acesso do seu navegador, possuindo atualmente versões em inglês e português.
  
## Tecnologias Utilizadas

- **Ruby on Rails:** Framework principal para desenvolvimento back-end.
- **Bootstrap:** Para estilização da interface.
- **PostgreSQL:** Banco de dados utilizado para armazenar dados dos usuários e histórias.

## Como Executar o Projeto

### Pré-requisitos

- Ruby (versão 3.0 ou superior)
- Rails (versão 6.1 ou superior)
- PostgreSQL
- Bundler (para instalar dependências do projeto)

### Passos para rodar o projeto localmente

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/guilhermevnbraga/railstales.git
   ```

2. **Instale as dependências:**

    ```bash
    cd RailsTales
    bundle install
    ```

3. **Crie e migre o banco de dados:**

    ```bash
    rails db:create
    rails db:migrate
    ```

4. **Criar arquivo .env:**

    ```bash
    DB_URL=postgres://username:password@host:port/database_name
    GOOGLE_APP_EMAIL=seu-email
    GOOGLE_APP_PASSWORD=senha-de-app-do-email
    ```

5. **Inicie o servidor:**

    ```bash
    rails server
    ```

6. **Acesse a aplicação no navegador: http://localhost:3000**
