resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}

resource "azurerm_service_plan" "plan" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.service_plan_os
  sku_name            = var.service_plan_sku
  tags                = var.tags
}

resource "azurerm_windows_web_app" "app" {
  name                = "${var.web_app_name_prefix}-${random_string.suffix.result}"
  location            = azurerm_service_plan.plan.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id
  tags                = var.tags

  site_config {
    always_on = false
  }
}
