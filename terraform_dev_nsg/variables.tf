variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "rg-dev"
}

variable "location" {
  description = "Azure region where resources will be created."
  type        = string
  default     = "West US 2"
}

variable "nsg_name" {
  description = "Name of the Network Security Group."
  type        = string
  default     = "nsg-dev"
}

variable "security_rules" {
  description = "List of security rules to attach to the NSG."
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = [
    {
      name                       = "AllowSSHInbound"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "AllowHTTPSInbound"
      priority                   = 110
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}

variable "tags" {
  description = "Tags to apply to all resources. Must satisfy subscription tag policy (Product is required)."
  type        = map(string)
  default = {
    Product     = "terraform-dev"
    Owner       = "sanjaymunukoti"
    CostCenter  = "IT-0001"
    Environment = "dev"
    managed_by  = "terraform"
  }
}
