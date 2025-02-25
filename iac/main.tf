module "azure_storage_account" {
  source               = "./modules/storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
}

module "azure_search_service" {
  source = "./modules/search_service"

  name                = var.search_serivce_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.search_serivce_sku
  semantic_search_sku = "free"
  identity_type       = "SystemAssigned"
}

module "azure_service_plan" {
  source = "./modules/service_plan"

  name                         = var.web_app_service_plan_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  os_type                      = "Linux"
  sku_name                     = var.web_app_service_plan_sku_name
}
