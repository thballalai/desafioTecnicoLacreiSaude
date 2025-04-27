
Cypress.Commands.add('home_page_acess_signin', () => {
        cy.visit('/')
            .get('.content-container')

            cy.get('[data-qa-id="criar-conta"]')
                .click()
})