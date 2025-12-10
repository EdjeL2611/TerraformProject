output "azurerm_container_app" {
  description = "The ID of the Azure Container App."
  value       = azurerm_container_app.containerapp.id
}

output "workspace_id" {
  description = "The ID of the Log Analytics workspace."
  value       = azurerm_log_analytics_workspace.log_analytics.id
}

output "container_app_url" {
  value       = azurerm_container_app.containerapp.ingress[0].fqdn
  description = "De public URL van de container app"
}

