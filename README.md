# Documentação do projeto - iago gabriel

Segue abaixo a documentação para o projeto de listagem de salários

# Estrutura do projeto

O arquivo enviado consiste na solução “ListagemSalarios”, dentro da solução existem dois projetos:

- LendoPlanilhaAPI - API para inserção da planilha, leitura dos dados e inserção no banco
- ListagemWEBFORM - WEBFORM para amostragem dos salários a partir do banco

# Banco de Dados, tabelas e view

O banco utilizado para criação do projeto foi o Oracle Database 21c Express Edition. No banco de dados, foram criadas as tabelas: pessoa, cargo, vencimento e pessoa_salario, cada qual com as seguintes informações:

- pessoa
    
    id number PRIMARY KEY
    
    nome varchar2
    
    cidade varchar2
    
    email varchar2
    
    cep varchar2
    
    endereco varchar2
    
    pais varchar2
    
    usuario varchar2
    
    telefone varchar2
    
    data_nascimento varchar2
    
    cargo_id number
    
- vencimento
    
    cargo_id number primary key
    
    salario number
    
- cargo
    
    id number PRIMARY KEY
    
    nome varchar2
    
- pessoa_salario
    
    pessoa_id number primary key
    
    nome varchar2
    
    salario number
    

Para o preenchimento da tabela pessoa_salario, criei uma view view_pessoa_salario, que reune os dados pessoa_id, nome da tabela pessoa e o salario dessa pessoa, que vem da tabela vencimento.

# Executando em um ambiente local

Para a execução do projeto, as planilhas acimas devem ser criadas anteriormente, a string de conexão com o banco de dados também deve ser alterada para o ambiente correspondente. 

O primeiro projeto que deve ser executado é o LendoPlanilhaAPI, uma vez iniciado, ele abrirá na tela do swagger para inserção do arquivo da planilha a partir do post InputFile, contido no controller ExcelController.cs, presente na pasta Controllers.

Uma vez que o arquivo foi inserido, as tabelas no banco de dados já foram preenchidas com todas as informações. Dessa forma, o projeto ListagemWEBFORM deve ser executado em seguida. Uma vez iniciado, a página HelloWorld irá exibir os dados da tabela pessoa_salario.

# Adendo

Infelizmente, não pude aperfeiçoar muitos elementos do sistema como eu gostaria porque não tive tempo suficiente na semana decorrida.

Segue alguns elementos que eu gostaria de ter implementado melhor porém não tive tempo:

- Chaves estrangeiras funcionando corretamente
- Inserção do arquivo de planilha em um ambiente gráfico próprio, utilizei uma API junto ao swagger e insomnia.
- Verificar se as tabelas necessárias já foram criadas no banco de dados informado, caso não existam, cria-las automaticamente.

# Detalhes da implementação

## LendoPlanilhaAPI

A API recebe o arquivo através do endpoint InputFile, uma vez que o arquivo é inserido, a classe 

## ListagemWEBFORM
