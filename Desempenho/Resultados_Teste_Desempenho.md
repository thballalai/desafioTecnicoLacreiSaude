# Resultados dos Testes de Desempenho

## **Descrição Geral**
Os testes de desempenho foram realizados para avaliar o tempo de resposta e a estabilidade de endpoints críticos do sistema da Lacrei Saúde.  
Os testes foram executados utilizando o **K6** via **PowerShell**, com geração de evidência em formato de relatório HTML.

## **Teste Realizado**

Foi realizado um teste para validar se a funcionalidade de login se comporta de maneira estável sob carga.

Para isso, foi criado um script utilizando o framework **K6** para simular múltiplas solicitações de login, realizadas por **20 usuários simultâneos** durante **1 minuto**.

### **Código Utilizado**

````javascript
import http from 'k6/http';
import { check, sleep } from 'k6';
import { htmlReport } from 'https://raw.githubusercontent.com/benc-uk/k6-reporter/main/dist/bundle.js';

export const options = {
    vus: 20,
    duration: "1m",
};

export default function () {
    const url = "https://lacrei-api-staging.lacreisaude.com.br/v1/lacreiid/auth/login/";

    const payload = JSON.stringify({
        "email": "xacamov931@lushosa.com", 
        "password": "Senha1234!"
    });

    const params = {
        headers: {
            'Content-Type': 'application/json',
        },
    };

    const response = http.post(url, payload, params);

    check(response, {
        'status code é 200': (r) => r.status === 200,
        'tempo de resposta menor que 200ms': (r) => r.timings.duration < 200,
        'chave de retorno não é vazia': (r) => r.json('key') != null,
    });

    sleep(1);
}

// Exportando o resumo em HTML
export function handleSummary(data) {
    return {
        "./relatorios/teste-login.html": htmlReport(data),
    };
}
````


## **Conclusões**
- O tempo de resposta da API de login não está dentro da faixa aceitável, considerando que todos os testes falharam no critério de tempo abaixo de 200ms.
- Apesar da carga, a API respondeu de forma estável, sempre retornando uma resposta válida.

## **Evidências**

- Relatório gerado automaticamente pelo K6: [Relatório de teste - Login](https://github.com/thballalai/desafioTecnicoLacreiSaude/Desempenho/relatorios/teste-login.html)

## **Sugestões de melhoria**
1. O tempo de resposta observado (acima de 200ms) pode ser otimizado por meio de melhorias no código backend, otimização de consultas ao banco de dados, cache de autenticação ou balanceamento de carga.
2. Execução de teste de resistência com carga constante durante longos períodos de tempo.