resource "azurerm_container_app" "containerapp" {
  name                         = "containerapp-${random_string.suffix.result}"
  resource_group_name          = azurerm_resource_group.TerraformProject.name
  container_app_environment_id = azurerm_container_app_environment.appenv.id
  revision_mode                = "Single"

  template {
    container {
      name   = "mycontainer"
      image  = "nginx:latest"
      cpu    = "0.5"
      memory = "1.0Gi"
    }
  }
}

resource "azapi_update_resource" "containerapp_scale" {
  type        = "Microsoft.App/containerApps@2024-03-01"
  resource_id = azurerm_container_app.containerapp.id

  body = jsonencode({
    properties = {
      template = {
        scale = {
          minReplicas = 1
          maxReplicas = 3
          rules = [
            {
              name = "http-rule"
              http = {
                metadata = {
                  concurrentRequests = "50"
                }
              }
            }
          ]
        }
      }
    }
  })
}
