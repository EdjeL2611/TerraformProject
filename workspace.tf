resource "azurerm_analytics_workspace" "Log_analytics" {
  name                = var.analytics_workspace_name
  resource_group_name = var.azurerm_resource_group_name
  location            = var.location
  storage_account_id  = var.azurerm_storage_account.ProjectAccount.id
  sku                 = var.sku
  retention_in_days   = 30
}  