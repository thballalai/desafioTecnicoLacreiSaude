# Resultados dos Testes de Acessibilidade

## **Descrição**
Os testes de acessibilidade foram conduzidos com base nas diretrizes da WCAG 2.1, com foco em garantir que a aplicação seja utilizável por todas as pessoas, incluindo aquelas com deficiências visuais e motoras. Para isso, foram avaliados aspectos como contraste de cores, navegação por teclado e boas práticas de desenvolvimento acessível. As ferramentas utilizadas nos testes foram o Lighthouse (para análise automatizada) e o Contrast Checker (para avaliação de contraste). Além disso, foram realizados testes manuais para identificar possíveis falhas não detectadas pelas ferramentas automatizadas.

## **Resultados**

### **1. Teste Automatizado com Lighthouse**
- **URL testada:** [Perfil](https://paciente-staging.lacreisaude.com.br/perfil/)
- **Pontuação geral de acessibilidade:** **100/100**
- **Ambiente de teste:**
  - **Dispositivo:** Emulação do Moto G Power
  - **Conexão:** 4G limitada (simulada)
  - **Data:** 25/04/2025

**Conclusões:**
- Todos os critérios automatizáveis de acessibilidade foram atendidos.
- É recomendada a realização de testes manuais complementares.

### **2. Teste de Navegação por Teclado**
- **Resultado:** **Inconforme**
  - A navegação por teclado apresentou problemas de interatividade em dois elementos:
    - Na página de listagem de profissionais, o botão "Mais informações" não executa nenhuma ação ao ser ativado pelo teclado.
    - Na página de perfil, há um menu de navegação por abas com as opções "Informações pessoais", "Segurança" e "Privacidade", mas não foi possível acessar o conteúdo dessas abas utilizando apenas o teclado.

  - O foco visual é exibido adequadamente e os modais podem ser fechados com a tecla **Esc**.

### **3. Teste de Contraste de Cores**
- **Ferramenta utilizada:** [Contrast Checker](https://contrastchecker.com/)
- **Resultados:**

| Elemento              | Contraste | Status        | Observações                                                           |
|-----------------------|-----------|---------------|------------------------------------------------------------------------|
| Botão "Editar foto"   | 4.52:1    | Conforme (AA) | Contraste aceitável para os padrões AA                                |
| Botão "Editar dados"  | 4.52:1    | Conforme (AA) | Contraste aceitável para os padrões AA                                |
| Lista                 | 16.48:1   | Conforme (AAA)| Texto dentro da lista com contraste aceitável para os padrões AAA     |
| Botão "Salvar"        | 4.52:1    | Conforme (AA) | Contraste aceitável para os padrões AA                                |

**Conclusão:**
- Todos os elementos testados atendem aos critérios de contraste exigidos pela **WCAG 2.1**.

---

## **Sugestões de Melhoria**
Embora os testes de acessibilidade tenham apresentado alta conformidade, recomenda-se:
1. Melhorar o contraste dos elementos que atendem apenas ao padrão AA, visando atingir o padrão AAA e incluir usuários com necessidades visuais mais específicas.

---

## **Evidências**
1. **Captura de tela – Relatório Lighthouse:**  
   [Relatório Lighthouse](https://github.com/thballalai/desafioTecnicoLacreiSaude/Acessibilidade/evidências/Perfil-RelatorioLighthouse.pdf)

2. **Captura de tela – Contraste de cores:**  
   [Resultados do Contraste](https://github.com/thballalai/desafioTecnicoLacreiSaude/Acessibilidade/evidências/Perfil-RelatorioContrastChecker.pdf)

3. **Gravação de tela – Navegação por teclado:**  
   [Resultado da Navegação por Teclado](https://github.com/thballalai/desafioTecnicoLacreiSaude/Acessibilidade/evidências/acessibilidade-Teclado.mkv)
