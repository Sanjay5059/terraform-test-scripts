output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Location of the created resource group."
  value       = azurerm_resource_group.rg.location
}

output "vnet_id" {
  description = "ID of the created virtual network."
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Name of the created virtual network."
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  description = "ID of the created subnet."
  value       = azurerm_subnet.subnet.id
}

output "subnet_name" {
  description = "Name of the created subnet."
  value       = azurerm_subnet.subnet.name
}
