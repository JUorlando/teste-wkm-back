```markdown
# 🚀 Começando com Strapi

Strapi vem com uma interface de linha de comando (CLI) completa, que permite criar e gerenciar seu projeto em segundos. Confira a documentação da CLI [aqui](https://docs.strapi.io/dev-docs/cli).

### `develop`

Inicie sua aplicação Strapi com autoReload habilitado. [Saiba mais](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# ou
yarn develop
```

### `start`

Inicie sua aplicação Strapi com autoReload desabilitado. [Saiba mais](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# ou
yarn start
```

### `build`

Construa seu painel de administração. [Saiba mais](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# ou
yarn build
```

## ⚙️ Implantação

Strapi oferece muitas opções de implantação para seu projeto, incluindo [Strapi Cloud](https://cloud.strapi.io). Navegue pela seção de [implantação da documentação](https://docs.strapi.io/dev-docs/deployment) para encontrar a melhor solução para seu caso de uso.

```
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
```

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
