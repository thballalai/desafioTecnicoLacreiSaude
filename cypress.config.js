const { defineConfig } = require("cypress");

const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const { addCucumberPreprocessorPlugin } = require("@badeball/cypress-cucumber-preprocessor");
const { createEsbuildPlugin } = require("@badeball/cypress-cucumber-preprocessor/esbuild");

module.exports = defineConfig({
  e2e: {
    baseUrl: "http://paciente-staging.lacreisaude.com.br/",
    specPattern: "cypress/e2e/features/*.feature",
    reporter: 'cypress-mochawesome-reporter',
    reporterOption: {
      charts: true,
      reportTitle: 'Projeto Lacrei Saúde',
      reportPageTitle: 'Projeto Lacrei Saúde',
      embeddedScreenshots: true,
    },
    setupNodeEvents(on, config) {
      addCucumberPreprocessorPlugin(on, config);
      require('cypress-mochawesome-reporter/plugin')(on);


      on(
        "file:preprocessor",
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        })
      );

      return config;
    },
  },
});
