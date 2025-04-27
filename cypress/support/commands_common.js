Cypress.Commands.add('common_fill_form', (id, input) => {
    cy.get('.inputContainer')
        .find(id)
        .type(input)
})

Cypress.Commands.add('common_check_terms', () => {
    cy.get(':nth-child(1) > label > .check-container')
    .click()
})

Cypress.Commands.add('common_check_age', () => {
    cy.get(':nth-child(2) > label > .check-container')
    .click()
})