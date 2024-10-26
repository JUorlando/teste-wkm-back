````markdown
# 🚀 Começando com Strapi

Strapi vem com uma interface de linha de comando (CLI) completa, que permite criar e gerenciar seu projeto em segundos. Confira a documentação da CLI [aqui](https://docs.strapi.io/dev-docs/cli).

### `develop`

Inicie sua aplicação Strapi com autoReload habilitado. [Saiba mais](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```bash
yarn develop
```
````

### `start`

Inicie sua aplicação Strapi com autoReload desabilitado. [Saiba mais](https://docs.strapi.io/dev-docs/cli#strapi-start)

```bash
yarn start strapi
```

### `build`

Construa seu painel de administração. [Saiba mais](https://docs.strapi.io/dev-docs/cli#strapi-build)

```bash
yarn build
```

## ⚙️ Implantação

Strapi oferece muitas opções de implantação para seu projeto, incluindo [Strapi Cloud](https://cloud.strapi.io). Navegue pela seção de [implantação da documentação](https://docs.strapi.io/dev-docs/deployment) para encontrar a melhor solução para seu caso de uso.

```bash
yarn strapi deploy
```

## 📚 Aprenda mais

- [Centro de recursos](https://strapi.io/resource-center) - Centro de recursos do Strapi.
- [Documentação do Strapi](https://docs.strapi.io) - Documentação oficial do Strapi.
- [Tutoriais do Strapi](https://strapi.io/tutorials) - Lista de tutoriais feitos pela equipe central e pela comunidade.
- [Blog do Strapi](https://strapi.io/blog) - Blog oficial do Strapi contendo artigos feitos pela equipe do Strapi e pela comunidade.
- [Changelog](https://strapi.io/changelog) - Descubra as atualizações do produto Strapi, novas funcionalidades e melhorias gerais.

Sinta-se à vontade para conferir o [repositório do Strapi no GitHub](https://github.com/strapi/strapi). Seu feedback e contribuições são bem-vindos!

## ✨ Comunidade

- [Discord](https://discord.strapi.io) - Venha conversar com a comunidade Strapi, incluindo a equipe central.
- [Fórum](https://forum.strapi.io/) - Lugar para discutir, fazer perguntas e encontrar respostas, mostrar seu projeto Strapi e receber feedback ou apenas conversar com outros membros da comunidade.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - Uma lista curada de coisas incríveis relacionadas ao Strapi.

---

## 🔑 Acessando o Strapi como Administrador

Para acessar o painel administrativo do Strapi, use as seguintes credenciais:

- **Email:** admin@teste.com
- **Senha:** Senha123

Acesse [http://localhost:1337/admin](http://localhost:1337/admin) e faça login com as credenciais acima.

## 💻 Rodando a Aplicação Localmente

Para rodar a aplicação localmente na sua máquina, siga os passos abaixo:

OBS: Comente os campos de conexão com database no .env para rodar a aplicação de forma local, pois esse arquivo está configurado para rodar com docker-compose.

### Requisitos

- Node.js (versão recomendada: 18.20.3)
- Yarn (ou npm)
- PostgreSQL (configurado e rodando localmente)

### Passos

1. Clone o repositório:
   ```bash
   git clone https://github.com/JUorlando/teste-wkm.git
   ```
2. Instale as dependências:
   ```bash
   yarn install
   ```
3. Configure as variáveis de ambiente para a conexão com o banco de dados PostgreSQL.
4. Execute as migrações e inicie o projeto:
   ```bash
   yarn develop
   ```

## 🐳 Rodando com Docker

### Requisitos

- Docker
- Docker Compose

### Passos

1. Clone o repositório:
   ```bash
   git clone https://github.com/JUorlando/teste-wkm.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd teste-wkm
   ```
3. Construa e inicie os contêineres:
   ```bash
   construir: docker-compose up -d
   iniciar: docker-compose up
   ```
4. Acesse o painel administrativo do Strapi:

   - Acesse (http://localhost:1337/admin) e faça login com as credenciais fornecidas:

   - **Email:** admin@teste.com
   - **Senha:** Senha123

Para parar os contêineres, use:

```bash
docker-compose down
```

## 🚀 Descrição do Projeto Backend

Este projeto backend foi desenvolvido utilizando o Strapi V5 e possui os seguintes recursos:

1. **Modelos Criados**:

   - **Estado**: Representa as unidades federativas do país.
   - **Cidade**: Representa as cidades, associadas a seus respectivos estados.
   - **Pessoa**: Representa os indivíduos, que podem estar associados a cidades.

2. **Configuração dos Modelos**:

   - Os modelos foram configurados para atender às regras do formulário, garantindo a integridade dos dados e a correta relação entre os diferentes modelos.

3. **Restrições de Deleção**:

   - **Cidade**: Não pode ser removida se houver uma pessoa associada a ela, evitando a perda de informações referenciadas.
   - **Estado**: Não pode ser removido se houver uma cidade associada a ele, garantindo que as hierarquias de localização sejam mantidas.

4. **Acesso às APIs**:
   - As APIs necessárias para o cadastro e gerenciamento dos modelos (Estado, Cidade, Pessoa) estão acessíveis publicamente, permitindo que usuários e sistemas externos interajam com os dados de forma segura e controlada.

## 🌐 Utilizando as Rotas no Insomnia/Postman

As rotas para acessar os recursos são as seguintes:

### **Endpoints**

- **Estados**: `http://localhost:1337/api/estados`
- **Cidades**: `http://localhost:1337/api/cidades`
- **Pessoas**: `http://localhost:1337/api/pessoas`

### ** Exemplos de Métodos de Requisição**

- **GET**: Para listar todos os registros
- **POST**: Para criar novos registros
- **GET**: `http://localhost:1337/api/estados/:id` (o id se trata do campo `documentId` na response) - Para listar registros específicos
- **PUT**: `http://localhost:1337/api/estados/:id` (o id se trata do campo `documentId` na response) - Para atualizar registros específicos
- **DELETE**: `http://localhost:1337/api/estados/:id` (o id se trata do campo `documentId` na response) - Para deletar registros específicos

### **Exemplos de Requisição e Resposta**

#### **Criar Estado**

**Requisição**

```json
{
  "data": {
    "nome": "Tocantins"
  }
}
```

**Resposta**

```json
{
  "data": {
    "id": 72,
    "documentId": "wyb90oz4r8yooguqyruw9l4y",
    "nome": "Tocantins",
    "createdAt": "2024-10-25T16:47:46.077Z",
    "updatedAt": "2024-10-25T16:47:46.077Z",
    "publishedAt": "2024-10-25T16:47:46.081Z"
  },
  "meta": {}
}
```

#### **Criar Cidade**

**Requisição**

```json
{
  "data": {
    "nome": "Recife",
    "estado": "fzftcfr9mwvfrxfur7ifyer5"
  }
}
```

**Resposta**

```json
{
  "data": {
    "id": 120,
    "documentId": "k3szu46xgqt17k57vxa7ipqe",
    "nome": "Recife",
    "createdAt": "2024-10-25T18:44:24.593Z",
    "updatedAt": "2024-10-25T18:44:24.593Z",
    "publishedAt": "2024-10-25T18:44:24.598Z"
  },
  "meta": {}
}
```

#### **Criar Pessoa**

**Requisição**

```json
{
  "data": {
    "nome": "Teste docker",
    "email": "teste@teste.com",
    "cidade": "rk0ul92qvxu219ehqon41poh",
    "estado": "vkdgon5gcu0eswcxtot7v0q1"
  }
}
```

**Resposta**

```json
{
  "data": {
    "id": 2,
    "documentId": "fma68ld8zhq0xqgj9xc2i8ul",
    "nome": "Teste docker",
    "email": "teste@teste.com",
    "createdAt": "2024-10-25T22:29:36.438Z",
    "updatedAt": "2024-10-25T22:29:36.438Z",
    "publishedAt": "2024-10-25T22:29:36.447Z"
  },
  "meta": {}
}
```
