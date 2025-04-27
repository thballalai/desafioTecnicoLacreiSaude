# Relatório de Bug

## Informações Gerais

- **Título**: Mensagem de erro não aparece ao realizar edição de dados com data futura
- **ID do Bug**: 01
- **Data**: 27/04/2025
- **Responsável**: Thiago Ballalai
- **Severidade**: Baixa

## Ambiente

- **Navegador**: Google Chrome Versão 135.0.7049.115 (versão oficial) 64 bits
- **Dispositivo Simulado**: Dispositivo móvel via DevTools
- **Resolução do Mobile**: 412x915 (Samsung Galaxy S20 Ultra)

## Passos para Reproduzir

1. Fazer login no sistema.
2. Abrir a página de perfil.
3. Clicar em "Editar Dados".
4. Informar uma data de nascimento no futuro.

## Comportamento Esperado

Exibição de uma mensagem de erro informando que a data de nascimento não pode ser futura.
## Comportamento Atual

Nenhuma mensagem de erro é exibida. O sistema não aceita a data inválida sem alertar o usuário.

## Captura de Tela / Vídeo

[Vídeo de evidência](https://github.com/thballalai/desafioTecnicoLacreiSaude/CasosDeTeste/EditarPerfil/evidencia-cenario02.mkv)


