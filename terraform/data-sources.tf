data "azurerm_resource_group" "resource_group" {
  name = local.azure_env.resource_group_name
}

data "azurerm_virtual_network" "vnet" {
  name                = local.azure_env.virtual_network_name
  resource_group_name = data.azurerm_resource_group.resource_group.name
}

data "azurerm_subnet" "subnet" {
  name                 = local.azure_env.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.resource_group.name
}

data "azurerm_public_ip" "public_ip" {
  name                = local.azure_env.public_ip_name
  resource_group_name = data.azurerm_resource_group.resource_group.name
}


data "azurerm_user_assigned_identity" "user_assigned" {
  name                = local.azure_env.user_assigned_name
  resource_group_name = local.azure_env.resource_group_name
}


data "azurerm_key_vault" "keyvault" {
  name                = local.azure_env.keyvault_name
  resource_group_name = local.azure_env.resource_group_name
}
