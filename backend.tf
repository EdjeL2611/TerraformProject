terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-project"
    storage_account_name = "terraformprojectsa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
