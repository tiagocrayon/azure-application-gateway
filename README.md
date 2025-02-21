# azure-application-gateway

## Install Terraform CLI https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## Create Storage Account and Container. State will be saved on storage account. Update backend block under terraform (see main-tf file)

## Create Subscription, Resource Group, Virtual Network, Subnet and Public IP
## Update variables.tf file with the id or name of the previous resources
## Application Gateway is the only resource created through terraform, all the others resources are imported (Data Sources) to terraform.


# Run Terraform
## It is based on workspaces. Where each workspace is an environment. Enviroments are inside /environments folder.
## Before run terraform make sure, the right environment/workspace is selected.
## --> List workspaces: terraform workspace list (asterisk appear on the workspace selected)
## --> See selected workspace: terraform workspace show
## --> Create workspace: terraform workspace new {name}


# STEPS:
## Go to directory azure-application-gateway\terraform
## terraform init
## terraform workspace select {name}
## terraform validate
## terraform plan
## terraform apply


# STATE
## Terraform states are saved on a storage account (see main-tf file, backend block under terraform)



# References:
## STATE: https://developer.hashicorp.com/terraform/language/state
## STORE STATE: https://developer.hashicorp.com/terraform/language/backend/azurerm
## WORKSPACES: https://developer.hashicorp.com/terraform/language/state/workspaces
## DATA SOURCES: https://developer.hashicorp.com/terraform/language/data-sources
## VARIABLES: https://developer.hashicorp.com/terraform/language/values/variables
## AZURE PROVIDER: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
## APPLICATION GATEWAY RESOURCE: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_gateway
## RUNNING TERRAFORM IN AUTOMATION: https://developer.hashicorp.com/terraform/tutorials/automation/automate-terraform
## DEBUGGING https://developer.hashicorp.com/terraform/internals/debugging 
## https://developer.hashicorp.com/terraform/language/backend  terraform init -backend-config=environments/beta/state.backendname.tfbackend 


# FUTURE PROJECTS
## Azure Automation Runbook to stop/start no production environments
## FinOps Project



# TODO:
## Authentication to azure ( Service Principal with a Client Secret ) https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret; Permissoes para o key vault
## Check SSL Profile / Certificates; Necessario desdobramento dos listeners
## COOKIES
## Confirm listeners: ssl_certificate_name => host_names
## Health Probes: verificar se permite custom headrs nas probes
## Uniformizar health probes path se possivel, cria entropia nas configurações
## Criar variaveis dinamicas consoante ambiente (reosurce groups, virtual network, ..)



# Infrastruture: 
## managed identity (contexto segurança para aceder ao key vault)
## service endpoint 
## application gateway


## Certificados: AZ-ACME, Key Vault
## Storage Account: logs, states, e error htmls (onde vao ser guardadas?)

# Log Analytics

## Application Gateway: 
## Tags, 
## tier (standard_v2), 
## autoscaling, 
## zones (2)

## Terraform: SSL Profile; Cookies

## WAF Firewall



# IMPLEMENTAR
# DEPLOY
# TESTAR