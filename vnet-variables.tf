variable "azurerm_virtual_network_name" {
  type        = string
  description = "name of the vnet"
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.1.0/24"]
}


