variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "rg-test"
}

variable "location" {
  description = "Azure region where resources will be created."
  type        = string
  default     = "West US 2"
}

variable "vnet_name" {
  description = "Name of the Virtual Network."
  type        = string
  default     = "vnet-test"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the Subnet."
  type        = string
  default     = "subnet-test"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the Subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "tags" {
  description = "Tags to apply to all resources. Must satisfy any subscription-level tag policies."
  type        = map(string)
  default = {
    Product     = "terraform-test"
    Owner       = "sanjaymunukoti"
    CostCenter  = "IT-0001"
    Environment = "test"
    managed_by  = "terraform"
  }
}
