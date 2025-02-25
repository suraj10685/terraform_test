variable "name" {
  type        = string
  description = "The Name which should be used for this Search Service."
}

variable "rgname" {
  type        = string
  description = "The name of the Resource Group where the Search Service should exist."
}

variable "location" {
  type        = string
  description = "The Azure Region where the Search Service should exist."
}

variable "sku" {
  type        = string
  description = "The name of the Resource Group where the Search Service should exist."
}

variable "semantic_search_sku" {
  type        = string
  description = "Specifies the Semantic Search SKU which should be used for this Search Service."
}

variable "identity_type" {
  type        = string
  description = "Specifies the type of Managed Service Identity that should be configured on this Search Service."
}
