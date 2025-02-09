# Infraestrutura como Código (IaC) com Terraform e CDK

Este projeto tem como objetivo provisionar um ambiente completo na AWS utilizando Infraestrutura como Código (IaC) com Terraform e AWS Cloud Development Kit (CDK). O projeto é dividido em duas partes principais: Terraform para a criação de infraestrutura e CDK para a implementação de serviços serverless.

## Estrutura do Projeto

O projeto é organizado da seguinte forma:

```
iac-project
├── terraform
│   ├── dev
│   ├── staging
│   ├── prod
│   └── modules
├── cdk
└── README.md
```

### Terraform

A pasta `terraform` contém subpastas para os ambientes de desenvolvimento (`dev`), staging (`staging`) e produção (`prod`). Cada ambiente possui seus próprios arquivos de configuração (`main.tf`, `variables.tf`, `outputs.tf`, `provider.tf`) que definem a infraestrutura necessária, incluindo:

- **VPC**: Rede virtual privada.
- **EC2**: Instâncias de computação.
- **RDS**: Banco de dados relacional.
- **S3**: Armazenamento de objetos.
- **Load Balancer**: Balanceamento de carga.

Além disso, a pasta `modules` contém módulos reutilizáveis para cada componente da infraestrutura.

### AWS CDK

A pasta `cdk` contém a implementação de serviços serverless utilizando o AWS CDK com Python. Os principais componentes incluem:

- **Lambda**: Funções serverless que respondem a eventos.
- **API Gateway**: Interface para expor as funções Lambda como APIs.
- **DynamoDB**: Banco de dados NoSQL.

Os arquivos principais incluem `app.py` para definir as stacks e `requirements.txt` para listar as dependências do projeto.

## Como Usar

1. **Terraform**:
   - Navegue até a pasta do ambiente desejado (`dev`, `staging`, `prod`).
   - Execute `terraform init` para inicializar o ambiente.
   - Execute `terraform apply` para provisionar a infraestrutura.

2. **CDK**:
   - Navegue até a pasta `cdk`.
   - Execute `pip install -r requirements.txt` para instalar as dependências.
   - Execute `cdk deploy` para implantar as stacks definidas.

## Contribuição

Sinta-se à vontade para contribuir com melhorias ou correções. Para isso, crie um fork do repositório, faça suas alterações e envie um pull request.

