variable "azurerm_subnet_name" {
  description = "The name of the subnet."
  type        = string
  
}

variable "azurerm_subnet_address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
  default = [ "10.0.1.0/25" ]
  
}