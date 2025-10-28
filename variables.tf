variable "azurerm_resource_group_name" {
  type        = string
  description = "name of my resourcegroup"
}

variable "location" {
  type        = string
  description = "location of the resource"
  default     = "westeurope"
}

variable "storage_account_name" {
  type = string
  description = "name of storage account"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}
