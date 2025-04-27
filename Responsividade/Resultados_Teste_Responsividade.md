# Testes de Responsividade

## **Descrição Geral**
Os testes de responsividade foram realizados no site da Lacrei Saúde utilizando o Google Chrome com a ferramenta DevTools para simular diferentes dispositivos e resoluções. O objetivo foi verificar se o sistema funciona corretamente em telas de diferentes tamanhos, sem comprometer a usabilidade ou o layout.

## **Ambiente de Teste**
- **Data:** 26/04/2025
- **Navegador:** Google Chrome Versão 135.0.7049.115 (versão oficial) 64 bits
- **Dispositivo Simulado:** Dispositivo móvel via DevTools
- **Resoluções Testadas:**
  - **Mobile:** 360x740 (Samsung Galaxy S8+)
  - **Tablet:** 853x1280 (Asus Zenbook Fold)
  - **Desktop:** 1920x1080

## **Resultados dos Testes**

### **1. Teste em dispositivo móvel**
- **Resolução Simulada:** 360x740 (Samsung Galaxy S8+)
- **Resultado:** **Inconforme**
  - O layout se ajusta corretamente à tela do dispositivo.
  - Todos os botões, menus e elementos interativos funcionaram conforme esperado.
  - **Defeito encontrado:** Na página de contato com o profissional, o espaço para preenchimento do código enviado por SMS ultrapassa os limites de margem da tela.

### **2. Teste em dispositivo tablet**
- **Resolução Utilizada:** 853x1280
- **Resultado:** **Inconforme**
  - O layout se ajusta corretamente à tela do dispositivo.
  - Elementos permanecem utilizáveis.
  - **Defeitos encontrados:**
    1. Excesso de espaçamento entre a parte principal da página e o rodapé (na página de login).
    2. Excesso de espaçamento entre a parte principal da página e o rodapé (na página de recuperação de senha).
    3. Falta de espaçamento entre elementos no rodapé, especificamente entre o elemento `span` (CNPJ) e o botão de "voltar ao topo".

### **3. Teste em dispositivo desktop**
- **Resolução Utilizada:** 1920x1080
- **Resultado:** **Conforme**
  - O layout é exibido de forma adequada em telas grandes.
  - Elementos permanecem bem alinhados e utilizáveis.
  - Não foram detectados problemas.

## **Evidências**

- **Simulação Mobile:**
  [Evidência Mobile](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/video/teste-mobile360x740.mkv)

  Foi identificado um defeito na exibição do campo de input para o código recebido via SMS, que ultrapassa as margens da tela.

  ![Evidência de defeito Mobile 01](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/printscreen/mobile-evidencia01.png)

- **Simulação Tablet:**
  [Evidência Tablet](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/video/teste-tablet360x740.mkv)

  Foram identificados três defeitos:

  1. Excesso de espaçamento na página de login.

     ![Evidência de defeito Tablet 01](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/printscreen/tablet-evidencia01.png)

  2. Excesso de espaçamento na página de recuperação de senha.

     ![Evidência de defeito Tablet 02](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/printscreen/tablet-evidencia02.png)

  3. Falta de espaçamento entre elementos no rodapé (entre `span` e botão "voltar ao topo").

     ![Evidência de defeito Tablet 03](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/printscreen/tablet-evidencia03.png)

- **Simulação Desktop:**
  [Evidência Desktop](https://github.com/thballalai/desafioTecnicoLacreiSaude/Responsividade/evidencias/video/teste-desktop1920x1080.mkv)

  Como não foram identificados problemas, não há capturas de tela de erros.

## **Conclusão**
Os testes de responsividade confirmaram que o sistema da Lacrei Saúde funciona corretamente em dispositivos móveis, tablets e desktops. Apesar da presença de alguns defeitos de layout em telas menores, o sistema se comporta de forma aceitável, mantendo a usabilidade e funcionalidade.
