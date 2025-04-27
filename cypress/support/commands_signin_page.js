Cypress.Commands.add('signin_page_click_signin', () => {
    cy.get('.btn-container')
        .contains('Cadastrar')
        .click()
})

Cypress.Commands.add('signin_page_read_error', (message) => {
    cy.contains(message)
        .should('be.visible')
})