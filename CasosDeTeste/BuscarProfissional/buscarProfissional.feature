@buscar_profissional
Funcionalidade: Buscar profissional
  Sendo um usuário do sistema Lacrei Saúde
  Quero acessar a lista de profissionais relevantes
  Para que eu possa escolher um profissional de acordo com minhas especificações

  Contexto:
    Dado que o usuário esteja logado no sistema
    E esteja na tela principal

  Cenário: Busca com caracteres especiais
    E preenche o campo de busca com caracteres especiais
    Quando clicar no ícone de lupa
    Então deve ser exibida a mensagem: "Não encontramos o que você procura"

  Cenário: Busca por termos de especialização
    E preenche o campo de busca com um termo de especialização médica
    Quando clicar no ícone de lupa
    Então deve ser apresentada uma lista de profissionais relacionados ao termo digitado

  Cenário: Busca por cidades
    E preenche o campo de busca com o nome de uma cidade
    Quando clicar no ícone de lupa
    Então deve ser apresentada uma lista de profissionais que atendem na cidade digitada