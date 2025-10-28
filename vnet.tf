resource "azurerm_virtual_network" "azurerm_virtual_network" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
}

