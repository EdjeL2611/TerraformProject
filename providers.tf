terraform {
  required_version = ">= 1.4.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }

    azapi = {
      source  = "azure/azapi"
      version = "~> 1.13.0"
    }
  }
}

provider "azurerm" {
  features {}
}
