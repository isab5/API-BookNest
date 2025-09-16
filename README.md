# 📚 API-BookNest

A API-BookNest é uma API RESTful criada para gerenciar livros e autores. Ela permite realizar operações de CRUD em livros e autores. O projeto é desenvolvido em Node.js, Express e PostgreSQL, oferecendo endpoints robustos para integração com aplicações web e mobile.

---

## Índice

- [Funcionalidades](#funcionalidades)
- [Como Começar](#como-começar)
  - [Pré-requisitos](#pré-requisitos)
  - [Instalação](#instalação)
  - [Variáveis de Ambiente](#variáveis-de-ambiente)
  - [Configuração do Banco de Dados](#configuração-do-banco-de-dados)
  - [Rodando a API](#rodando-a-api)
- [Endpoints](#endpoints)
- [Tratamento de Erros](#tratamento-de-erros)
- [Testando a API](#testando-a-api)
- [Documentação no Postman](#documentação-no-postman)
- [Contribuindo](#contribuindo)
- [Licença](#licença)

---

## Funcionalidades

- Gerenciamento de livros e autores
- Operações completas de CRUD para todos os recursos

---

## Como começar

### Pré-requisitos

- [Node.js](https://nodejs.org/) (recomendado v16+)
- [npm](https://www.npmjs.com/) ou [yarn](https://yarnpkg.com/)
- [PostgreSQL](https://www.postgresql.org/)

### Instalação

Clone o repositório:

```bash
git clone https://github.com/isab5/API-BookNest.git

cd API-BookNest
```

Instale as dependências:

```bash
npm install
# ou
yarn install
```

### Variáveis de Ambiente

Crie um arquivo `.env` na raiz do projeto e configure as seguintes variáveis (as variáveis também podem ser encontradas na `.env.example`):

```
PORT=3000
DB_USER=(nomedouser ou postgres)
DB_HOST=localhost
DB_NAME=booknest
DB_PASSWORD=(senha do seu postgres)
DB_PORT=(port do seu postgres)
```

Ajuste os valores conforme a sua configuração.

### Configuração do Banco de Dados

1. Crie um banco de dados PostgreSQL (nome sugerido: `booknest`).
2. Execute os scripts SQL que podem ser encontrados na rota `src/database/schema.sql`.  

### Rodando a API

Inicie o servidor em modo de desenvolvimento:

```bash
npm run dev
# ou
yarn dev
```

A API estará disponível por padrão em `http://localhost:3000`.

---

## Endpoints

### Livros

- `GET /api/books` — Lista todos os livros
- `GET /api/books/:id` — Busca um livro pelo ID
- `POST /api/books` — Cria um novo livro
- `PUT /api/books/:id` — Atualiza um livro
- `DELETE /api/books/:id` — Remove um livro

### Autores

- `GET /api/authors` — Lista todos os autores
- `GET /api/authors/:id` — Busca um autor pelo ID
- `POST /api/authors` — Cria um novo autor
- `PUT /api/authors/:id` — Atualiza um autor
- `DELETE /api/authors/:id` — Remove um autor

---

## Tratamento de Erros

A API retorna erros no formato:

```json
{
  "message": "Descrição do erro."
}
```

Códigos de status comuns:
- `400 Bad Request`: Dados de entrada inválidos
- `404 Not Found`: Recurso não encontrado
- `500 Internal Server Error`: Erro inesperado do servidor

---

## Testando a API

Você pode usar o [Postman](https://www.postman.com/) ou ferramentas similares para testar os endpoints. Uma coleção completa com exemplos está disponível no link da documentação abaixo.

---

## Documentação no Postman

Para um guia detalhado e interativo de todas as rotas, exemplos de requisição/resposta, autenticação e mais, acesse:

[![Ver Documentação no Postman](https://img.shields.io/badge/Postman-API%20Docs-orange?logo=postman)](https://documenter.getpostman.com/view/42621906/2sB3HqJe95)

**Link direto:**  
https://documenter.getpostman.com/view/42621906/2sB3HqJe95

---

## Contribuindo

Contribuições são bem-vindas! Basta fazer um fork do repositório e abrir um pull request com suas alterações.

---

## Licença

Este projeto está licenciado sob a licença MIT.