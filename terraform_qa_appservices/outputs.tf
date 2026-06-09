output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Location of the created resource group."
  value       = azurerm_resource_group.rg.location
}

output "service_plan_id" {
  description = "ID of the App Service Plan."
  value       = azurerm_service_plan.plan.id
}

output "service_plan_sku" {
  description = "SKU of the App Service Plan."
  value       = azurerm_service_plan.plan.sku_name
}

output "web_app_name" {
  description = "Name of the deployed Web App."
  value       = azurerm_windows_web_app.app.name
}

output "web_app_default_hostname" {
  description = "Default hostname of the Web App (e.g. <name>.azurewebsites.net)."
  value       = azurerm_windows_web_app.app.default_hostname
}

output "web_app_url" {
  description = "Browse URL for the Web App."
  value       = "https://${azurerm_windows_web_app.app.default_hostname}"
}
