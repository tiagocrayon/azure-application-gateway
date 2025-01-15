output "resource_group_location" {
  value = data.azurerm_resource_group.resource_group.location
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = data.azurerm_subnet.subnet.id
}

output "resource_group_id" {
  value = data.azurerm_resource_group.resource_group.id
}

output "azurerm_application_gateway" {
  value = azurerm_application_gateway.network.id
}