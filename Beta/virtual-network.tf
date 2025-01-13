data "azurerm_resource_group" "resource_group" {
  name = "TiagoIsabelinho"
}

data "azurerm_virtual_network" "vnet" {
  name                = "360imprimir-beta-vnw"
  resource_group_name = data.azurerm_resource_group.resource_group.name
}

data "azurerm_subnet" "subnet" {
  name                 = "default"
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.resource_group.name
}
