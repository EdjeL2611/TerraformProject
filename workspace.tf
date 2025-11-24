resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.azurerm_resource_group_name
  location            = var.location
  sku                 = var.sku
  retention_in_days   = 30
}   
