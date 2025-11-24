variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace"
  type        = string
}

variable "sku" {
  description = "The SKU of the Log Analytics Workspace"
  type        = string
  default     = "PerGB2018"

}