variable "analytics_workspace_name" {
  type        = string
  description = "name of the analytics workspace"
}

 variable "sku" {
   type = string
   description = "Defines the SKU of the Log Analytics Workspace."
   default = "PerGB2018"    
 }