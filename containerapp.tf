resource "azurerm_container_app" "containerapp" {
  name                         = "containerapp-${random_string.suffix.result}"
  location                     = azurerm_resource_group.TerraformProject.location
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

  scale {
    min_replicas = 1
    max_replicas = 3

    rule {
      name = "http-rule"

      http {
        metadata = {
          concurrentRequests = "50"
        }
      }
    }
  }
}
