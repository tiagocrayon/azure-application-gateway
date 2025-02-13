data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = data.azurerm_resource_group.resource_group.name
}

data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.resource_group.name
}

data "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.resource_group.name
}


data "azurerm_user_assigned_identity" "user_assigned" {
  name                = var.user_assigned_name
  resource_group_name = var.resource_group_name
}

# data "azurerm_key_vault" "keyvault" {
#   name                = "lab-bizay-kv-02"
#   resource_group_name = "TiagoIsabelinho"
# }




# # CERTIFICATE NAMES
# data "azurerm_key_vault_certificates" "keyvault" {
#   key_vault_id = data.azurerm_key_vault.keyvault.id
# }

# data "azurerm_key_vault_certificate" "keyvault" {
#   for_each     = toset(data.azurerm_key_vault_certificates.keyvault.names)
#   name         = each.key
#   key_vault_id = data.azurerm_key_vault.keyvault.id
# }


# output "certificates_name" {
#   value       = [for cert in data.azurerm_key_vault_certificates.keyvault.certificates : cert.name]
#   description = "List of certificate names"
# }



# # CERTIFICATE SECRETS
# data "azurerm_key_vault_secrets" "example" {
#   key_vault_id = data.azurerm_key_vault.keyvault.id
# }

# data "azurerm_key_vault_secret" "example" {
#   for_each     = toset(data.azurerm_key_vault_secrets.example.names)
#   name         = each.key
#   key_vault_id = data.azurerm_key_vault.keyvault.id
# }

# output "secret_id" {
#   value       = [for cert in data.azurerm_key_vault_secrets.example.secrets : cert]
#   description = "List of certificate names"
# }

