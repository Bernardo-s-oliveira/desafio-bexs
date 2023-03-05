# Marvel Api

# Pré-requisitos
Para executar esse projeto é necessário:

- git
- Ruby
- gem bundle install

# Instalação das dependências de desenvolvimento
Uma vez que todas as dependências já estão listadas no arquivo Gemfile, basta executar os comandos na raiz do projeto.

- bundle install
- cucumber --init

# Execução do projeto
- `cucumber -t@apiMarvel` - executa todos os testes;

# Arquitetura e design pattern

`features/services` - Aqui você encontra serviços de enpoints

`features/specifications` - Especificação do que será automatizado - BDD

`features/step_definitions` - Lógica e regra de negocio da aplicação

`features/suport` - Configuração do que será utilizado em todo o projeto,`base_uri`, `ambiente` e métodos que instanciam as classes de requests

OBS: Para executar direto no computador é necessário adicionar as chaves diretamente na variável de ambiente.

# Integração contínua
Foi implementado o pipeline de integração contínua com GitHub Actions. O arquivo de configuração do CI é o .github/workflows/main.yml. Em todo push ou pull_request no branch main o pipeline é executado. Como um dos objetivos desse teste é não informar as chaves de autenticação no código, foi utilizado `Secrets` do gitHub pra salvar essas variáveis de forma segura, fazendo com que seja possível executar a pipeline.
