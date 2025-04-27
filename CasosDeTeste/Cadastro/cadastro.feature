@cadastro
Funcionalidade: Cadastro
  Sendo um novo usuário do sistema Lacrei Saúde
  Quero completar o cadastro
  Para que eu possa ter acesso às funcionalidades dentro do sistema

  Contexto:
    Dado que o usuário não possui uma conta no sistema
    E acessa a tela de cadastro

  Cenário: Cadastro válido
    E preenche corretamente os campos Nome, Sobrenome, E-mail e Senha
    E aceita os termos e condições
    E confirma que tem mais de 18 anos
    Quando clicar no botão "Cadastrar"
    Então deverá ser direcionado para a página de cadastro com sucesso
    E deverá visualizar a mensagem:
      """
      Estamos quase lá... Agradecemos o seu interesse em fazer parte da Lacrei Saúde! Para sua segurança, enviamos um link de verificação para o e-mail cadastrado
      """

  Cenário: Cadastro sem preencher o campo Nome
    E preenche corretamente os campos Sobrenome, E-mail e Senha
    E aceita os termos e condições
    E confirma que tem mais de 18 anos
    Quando clicar no botão "Cadastrar"
    Então o foco deverá ser direcionado para o campo não preenchido
    E deverá ser exibida a mensagem de erro abaixo do campo: "O nome é obrigatório."

  Cenário: Cadastro com e-mail com formatação inválida
    E preenche corretamente os campos Nome, Sobrenome e Senha
    E preenche o campo E-mail com e-mail com formatação inválida
    E aceita os termos e condições
    E confirma que tem mais de 18 anos
    Quando clicar no botão "Cadastrar"
    Então deverá visualizar o campo de E-mail com destaque
    E deverá ser exibida a mensagem de erro: "Insira um e-mail válido."

  Cenário: Cadastro sem aceitar os termos e condições
    E preenche corretamente os campos Nome, Sobrenome, E-mail e Senha
    E confirma que tem mais de 18 anos
    Quando clicar no botão "Cadastrar"
    Então deverá ser exibida a mensagem de erro: "Você deve aceitar os termos."