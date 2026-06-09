output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Location of the created resource group."
  value       = azurerm_resource_group.rg.location
}

output "nsg_id" {
  description = "ID of the created Network Security Group."
  value       = azurerm_network_security_group.nsg.id
}

output "nsg_name" {
  description = "Name of the created Network Security Group."
  value       = azurerm_network_security_group.nsg.name
}
