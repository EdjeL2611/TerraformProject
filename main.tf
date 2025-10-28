resource "azurerm_resource_group" "TerraformProject" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "ProjectAccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.TerraformProject.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

}