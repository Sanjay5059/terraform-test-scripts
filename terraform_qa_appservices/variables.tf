variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "rg-qa"
}

variable "location" {
  description = "Azure region where resources will be created."
  type        = string
  default     = "West US 2"
}

variable "service_plan_name" {
  description = "Name of the App Service Plan."
  type        = string
  default     = "asp-qa"
}

variable "service_plan_sku" {
  description = "SKU for the App Service Plan. F1 = Free tier."
  type        = string
  default     = "F1"
}

variable "service_plan_os" {
  description = "OS type for the App Service Plan (Windows or Linux). F1 requires Windows."
  type        = string
  default     = "Windows"
}

variable "web_app_name_prefix" {
  description = "Prefix for the Web App name. A random suffix is appended for global uniqueness."
  type        = string
  default     = "qa-app"
}

variable "tags" {
  description = "Tags to apply to all resources. Must satisfy subscription tag policy (Product is required)."
  type        = map(string)
  default = {
    Product     = "terraform-qa"
    Owner       = "sanjaymunukoti"
    CostCenter  = "IT-0001"
    Environment = "qa"
    managed_by  = "terraform"
  }
}
