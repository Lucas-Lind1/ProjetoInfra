# Terraform Infrastructure as Code Project

Este projeto utiliza Terraform para provisionar uma infraestrutura completa na AWS, incluindo VPC, EC2, RDS, S3 e Load Balancer. O ambiente é dividido em três estágios: Desenvolvimento (Dev), Staging e Produção (Prod). Cada ambiente possui sua própria configuração, permitindo personalização e escalabilidade.

## Estrutura do Projeto

- **terraform/**: Contém a configuração do Terraform para os ambientes.
  - **dev/**: Configurações para o ambiente de desenvolvimento.
  - **staging/**: Configurações para o ambiente de staging.
  - **prod/**: Configurações para o ambiente de produção.
  - **modules/**: Módulos reutilizáveis para VPC, EC2, RDS, S3 e Load Balancer.

## Como Usar

1. **Instalação do Terraform**: Certifique-se de que o Terraform está instalado em sua máquina.
2. **Configuração do Provedor**: Edite os arquivos `provider.tf` em cada ambiente para incluir suas credenciais da AWS e a região desejada.
3. **Inicialização**: Navegue até o diretório do ambiente desejado (dev, staging ou prod) e execute `terraform init`.
4. **Aplicação da Configuração**: Execute `terraform apply` para provisionar a infraestrutura.
5. **Verificação das Saídas**: Após a aplicação, verifique as saídas definidas em `outputs.tf` para obter informações sobre os recursos provisionados.

## Módulos

Os módulos definidos em `modules/` permitem a reutilização de configurações para diferentes ambientes, facilitando a manutenção e a escalabilidade da infraestrutura.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorias e correções.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.