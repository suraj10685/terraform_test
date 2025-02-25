resource "azurerm_app_service_plan" "default" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux"  # Use "Windows" if needed

  sku {
    tier = "Standard"  # Adjust as needed (e.g., Free, Basic, Premium)
    size = var.sku_name
  }

  per_site_scaling     = false
  maximum_elastic_worker_count = 1

  tags = {
    environment = "dev"
  }
}
