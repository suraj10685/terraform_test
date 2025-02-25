variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure location"
  default     = "East US"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
}

variable "search_serivce_sku" {
  description = "The SKU of Search Service"
  type        = string
}
