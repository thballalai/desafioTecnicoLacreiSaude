import http from 'k6/http';
import { check, sleep } from 'k6';
import { htmlReport } from 'https://raw.githubusercontent.com/benc-uk/k6-reporter/main/dist/bundle.js';

export const options = {
    vus: 20,
    duration: "1m"
}

export default function () {

  const url = "https://lacrei-api-staging.lacreisaude.com.br/v1/lacreiid/auth/login/"

  const payload = JSON.stringify({
    "email": "xacamov931@lushosa.com", 
    "password": `Senha1234!`
  });

  const params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  const response = http.post(url, payload, params);

  check(response, {
    'status code is 200': (r) => r.status === 200,
    'tempo de resposta menos que 200ms': (r) => r.timings.duration < 200,
    'key de retorno não é vazia': (r) => r.json('key') != null,
  });

  sleep(1);
}

// Exportando o resumo em HTML
export function handleSummary(data) {
  return {
    "./relatorios/teste-login.html": htmlReport(data),
  };
}