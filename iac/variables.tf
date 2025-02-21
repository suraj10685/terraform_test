variable "rgname" {
  description = "Resource group name"
  default     = "github-action"
  type        = string
}

variable "location" {
  description = "Azure location"
  default     = "East US"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  default     = "terrafor-gihub-demo-storage"
  type        = string
}
