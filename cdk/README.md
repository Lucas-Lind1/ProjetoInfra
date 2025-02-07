# Projeto CDK para AWS

Este projeto utiliza o AWS Cloud Development Kit (CDK) para provisionar e gerenciar recursos na AWS de forma programática. O CDK permite que você escreva código em Python para definir a infraestrutura, facilitando a automação e a reutilização de componentes.

## Estrutura do Projeto

- **app.py**: Ponto de entrada da aplicação CDK, onde as stacks são definidas e instanciadas.
- **requirements.txt**: Lista de dependências necessárias para o projeto CDK.
- **cdk.json**: Configuração do projeto CDK, incluindo informações sobre a aplicação e as stacks.
- **lambda/**: Contém o código da função Lambda que será executada em resposta a eventos.
- **stacks/**: Contém as definições das stacks, incluindo:
  - **lambda_stack.py**: Stack para o serviço Lambda.
  - **api_gateway_stack.py**: Stack para o API Gateway.
  - **dynamodb_stack.py**: Stack para o DynamoDB.

## Como Usar

1. **Instalação de Dependências**: Execute `pip install -r requirements.txt` para instalar as dependências necessárias.
2. **Compilação e Deploy**: Utilize os comandos do CDK para compilar e implantar as stacks na AWS.
3. **Desenvolvimento**: Modifique os arquivos nas pastas `lambda` e `stacks` conforme necessário para atender aos requisitos do seu projeto.

## Contribuição

Sinta-se à vontade para contribuir com melhorias ou correções. Para isso, crie um fork do repositório, faça suas alterações e envie um pull request.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.