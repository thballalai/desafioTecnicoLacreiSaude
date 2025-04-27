@editar-perfil
Funcionalidade: Editar perfil
    Sendo um usuário do sistema Lacrei Saúde
    Quero acessar as minhas informações
    Para que eu possa visualizar e editar minhas informações

    Contexto:
        Dado que o usuário esteja logado no sistema
        E esteja na tela de perfil
        E clique no botão "Editar dados"

    Cenário: Edição bem-sucedida de todos os campos do perfil
        E preencha os campos Nome, Sobrenome, Data de nascimento, Pronome, Etnia, Gênero, Sexualidade e Deficiência corretamente
        E clicar no botão "Salvar"
        Então deve ser direcionado para tela de perfil
        E atualizar as informações do usuário

    Cenário: Edição de Data de nascimento com data posterior a atual
        E preencha o campo Data de nascimento com data futura
        E clicar no botão "Salvar"
        Então o campo Data de nascimento deve ser focado
        E apresentar erro "Data de nascimento inválida."

    Cenário: Edição com campo obrigatório Nome em branco
        E remove a informação do campo Nome
        E clicar no botão "Salvar"
        Então o campo Nome deve ser focado
        E apresentar erro "Nome deve ser preenchido."

    Cenário: Cancelamento da edição antes de salvar
        E preencha os campos Nome, Sobrenome, Data de nascimento, Pronome, Etnia, Gênero, Sexualidade e Deficiência corretamente
        E clicar no botão "Cancelar"
        Então deve ser direcionado para tela de perfil
        E manter as informações do usuário sem as alterações preenchidas