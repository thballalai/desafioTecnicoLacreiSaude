Feature: Cadastro
    Eu como cliente
    Quero me cadastrar na aplicação
    Para ser capaz de me logar na aplicação

    Scenario: Cadatro com formulário vazio
        Given O usuário está na tela de cadastro
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "O nome é obrigatório."

    Scenario: Cadastro com campo nome vazio
        Given O usuário está na tela de cadastro
        And Preencher sobrenome
        And Preencher e-mail
        And Preencher confirmacao de e-mail
        And Preencher senha
        And Preencher confirmacao de senha
        And aceite os termos
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "O nome é obrigatório."

    Scenario: Cadastro com campo sobrenome vazio
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher e-mail
        And Preencher confirmacao de e-mail
        And Preencher senha
        And Preencher confirmacao de senha
        And aceite os termos
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "O sobrenome é obrigatório."

    Scenario: Cadastro com campo e-mail vazio
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher sobrenome
        And Preencher confirmacao de e-mail
        And Preencher senha
        And Preencher confirmacao de senha
        And aceite os termos
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "O e-mail é obrigatório."

    Scenario: Cadastro com campo confirmação de email vazio
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher sobrenome
        And Preencher e-mail
        And Preencher senha
        And Preencher confirmacao de senha
        And aceite os termos
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "O e-mail é obrigatório."

    Scenario: Cadastro com campo senha vazio
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher sobrenome
        And Preencher e-mail
        And Preencher confirmacao de e-mail
        And Preencher confirmacao de senha
        And aceite os termos
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "A senha é obrigatória."

    Scenario: Cadastro com campo confirmação de senha vazio
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher sobrenome
        And Preencher e-mail
        And Preencher confirmacao de e-mail
        And Preencher senha
        And aceite os termos
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "A confirmação da senha é obrigatória."

    Scenario: Cadastro sem marcar checkbox de termos
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher sobrenome
        And Preencher e-mail
        And Preencher confirmacao de e-mail
        And Preencher senha
        And Preencher confirmacao de senha
        And confirme maior idade
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "Você deve aceitar os termos."

    Scenario: Cadastro sem marcar checkbox de idade
        Given O usuário está na tela de cadastro
        And Preencher nome
        And Preencher sobrenome
        And Preencher e-mail
        And Preencher confirmacao de e-mail
        And Preencher senha
        And Preencher confirmacao de senha
        And aceite os termos
        When Clicar no botão Cadastrar
        Then Aparecerá mensagem de erro "Você deve ter 18 anos ou mai."