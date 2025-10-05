# 📚 API-BookNest – Backend

Este repositório contém a API do **BookNest**, responsável por gerenciar livros e autores via uma API RESTful.  
⚠️ **Importante:** Para utilizar toda a aplicação BookNest, lembre-se de rodar também o [frontend](https://github.com/isab5/BookNest.git) localmente.

---

## 🚀 Pré-requisitos

Antes de começar, você precisa ter instalado na sua máquina:

- [Node.js](https://nodejs.org/) (v16+ recomendado)
- [npm](https://www.npmjs.com/) ou [yarn](https://yarnpkg.com/)
- [Git](https://git-scm.com/)
- [PostgreSQL](https://www.postgresql.org/)

---

# 📦 Clonando e Configurando o Backend

Siga os passos abaixo para rodar a API do BookNest localmente:

1. **Abrir o terminal/CMD**
    ```bash
    # Windows: Win + R → cmd
    # macOS: Cmd + Space → Terminal
    ```

2. **Navegar para o local onde deseja salvar o projeto (exemplo: Desktop):**
    ```bash
    cd Desktop
    ```

3. **Criar uma pasta para o projeto:**
    ```bash
    mkdir API-BookNest
    ```

4. **Entrar na pasta criada:**
    ```bash
    cd API-BookNest
    ```

5. **Clonar o repositório:**
    ```bash
    git clone https://github.com/isab5/API-BookNest.git .
    ```
    > O ponto ao final garante que os arquivos sejam clonados direto na pasta API-BookNest.

6. **Abrir o projeto no VS Code (opcional):**
    ```bash
    code .
    ```

7. **Instalar as dependências:**
    ```bash
    # Usando npm
    npm install

    # ou usando yarn
    yarn install
    ```

---

## 🗄️ Configuração do Banco de Dados

1. **Crie um banco PostgreSQL no seu computador**  
   Exemplo de nome sugerido: `booknest`.

2. **Configure as variáveis de ambiente**  
   Crie um arquivo `.env` na raiz do projeto com o seguinte conteúdo (edite conforme seu ambiente):

    ```
    PORT=4000
    DB_USER=seu_usuario_postgres
    DB_HOST=localhost
    DB_NAME=booknest
    DB_PASSWORD=sua_senha_postgres
    DB_PORT=porta_do_postgres
    ```

    Você pode usar o arquivo `.env.example` como base.

3. **Execute o script de criação das tabelas**  
   Rode o SQL localizado em `src/database/schema.sql` no seu banco PostgreSQL.

---

## ▶️ Rodando a API

Inicie o servidor de desenvolvimento:

```bash
# Usando npm
npm run dev

# ou usando yarn
yarn dev
```

A API estará disponível em:
👉 http://localhost:3000

> **Dica:** Mantenha o backend rodando em um terminal separado para garantir o funcionamento do frontend.

---

## 📚 Endpoints Principais

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

## 🚨 Tratamento de Erros

As respostas de erro são retornadas no formato:

```json
{
  "message": "Descrição do erro."
}
```

Códigos de status comuns:
- `400` — Dados de entrada inválidos
- `404` — Recurso não encontrado
- `500` — Erro interno do servidor

---

## 🧪 Testando a API

Você pode testar a API usando o [Postman](https://www.postman.com/) ou ferramentas semelhantes.  
Coleção pronta para uso:  
[![Ver Documentação no Postman](https://img.shields.io/badge/Postman-API%20Docs-orange?logo=postman)](https://documenter.getpostman.com/view/42621906/2sB3HqJe95)
  
[Documentação completa no Postman](https://documenter.getpostman.com/view/42621906/2sB3HqJe95)

---

## 🛠️ Tecnologias utilizadas

- Node.js e Express – Backend e API REST
- PostgreSQL – Banco de dados relacional
- Sequelize (ou outro ORM, se aplicável)
- Dotenv – Gerenciamento de variáveis de ambiente

---

## 📁 Estrutura do Projeto

```bash
API-BookNest/
├── src/
│   ├── controllers/      # Lógica dos endpoints
│   ├── database/         # Configuração e scripts do banco
│   ├── models/           # Modelos das tabelas
│   ├── routes/           # Rotas da API
│   └── ...               # Outros arquivos
├── .env.example          # Exemplo de configuração ambiente
├── README.md
└── ...
```

---

# 🤝 Contribuindo

Contribuições são bem-vindas!  
Siga os passos:

1. Faça um fork do projeto
2. Crie uma branch (`git checkout -b minha-feature`)
3. Commit suas alterações (`git commit -m 'feat: minha nova feature'`)
4. Envie para o repositório (`git push origin minha-feature`)
5. Abra um Pull Request

---

## 📄 Licença

Este projeto está sob a licença MIT.
