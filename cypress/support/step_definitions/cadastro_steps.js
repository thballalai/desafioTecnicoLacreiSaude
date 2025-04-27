import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor"

const input_text = {
    nome: "Qualquer",
    sobrenome: "Possibilidade de Nome",
    email: "teste@dominio.com.br",
    senha: "Senha123!",
}

const fill_id = {
    nome: "#first_name",
    sobrenome: "#last_name",
    email: "#email",
    confirmar_email: "#email2",
    senha: "#password1",
    confirmar_senha: "#password2",
}

Given('O usuário está na tela de cadastro', () => {
    cy.home_page_acess_signin()
});

Given('Preencher nome', () => {
    cy.common_fill_form(fill_id.nome, input_text.nome)
})

Given('Preencher sobrenome', () => {
    cy.common_fill_form(fill_id.sobrenome, input_text.sobrenome)
})

Given('Preencher e-mail', () => {
    cy.common_fill_form(fill_id.email, input_text.email)
})

Given('Preencher confirmacao de e-mail', () => {
    cy.common_fill_form(fill_id.confirmar_email, input_text.email)
})

Given('Preencher senha', () => {
    cy.common_fill_form(fill_id.senha, input_text.senha)
})

Given('Preencher confirmacao de senha', () => {
    cy.common_fill_form(fill_id.confirmar_senha, input_text.senha)
})

Given('aceite os termos', () => {
    cy.common_check_terms()
})

Given('confirme maior idade', () => {
    cy.common_check_age()
})

When("Clicar no botão Cadastrar", () => {
    cy.signin_page_click_signin()
});

Then("Aparecerá mensagem de erro {string}", (message) => {
    cy.signin_page_read_error(message)
});