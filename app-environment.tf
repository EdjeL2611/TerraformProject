resource "azurerm_container_app_environment" "appenv" {
  name                       = "Container-Environment"
  location                   = var.location
  resource_group_name        = var.azurerm_resource_group_name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.log_analytics.id
}
