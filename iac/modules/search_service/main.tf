resource "azurerm_search_service" "default" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
#  semantic_search_sku = var.semantic_search_sku

  identity {
    type = var.identity_type
  }

  lifecycle {
    prevent_destroy = false
  }
}
