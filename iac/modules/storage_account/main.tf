resource "azurerm_storage_account" "storage" {
  name     = var.storage_account_name
  location = var.location
  resource_group_name      = var.rgname
}
