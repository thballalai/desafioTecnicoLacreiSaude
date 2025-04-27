@recuperar-senha
Funcionalidade: Recuperar de senha
    Sendo um usuário do sistema Lacrei Saúde
    Quero recuperar minha senha
    Para que eu possa ter acesso às funcionalidades dentro do sistema

    Contexto:
        Dado que o usuário possui uma conta no sistema
        E esqueceu a senha de acesso
        E está na tela de login
        E clica no link "Esqueci minha senha"

    Cenário: Recuperação com e-mail não cadastrado
        E preenche o campo "e-mail" com e-mail não cadastrado
        Quando clicar no botão "Enviar link"
        Então deverá aparecer mensagem de erro "Algo deu errado, por favor, confira os dados inseridos e tente novamente"

    Cenário: Recuperação com formato de e-mail inválido
        E preenche o campo "e-mail" com e-mail com formatação inválida
        Quando clicar no botão "Enviar link"
        Então deverá aparecer mensagem de erro "Por favor, utilize formato de e-mail válido. Por exemplo email@dominio.com.br"