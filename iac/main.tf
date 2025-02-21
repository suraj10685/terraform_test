terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform_Test"
    storage_account_name = "terraforstr"
    container_name       = "terraform"
    key                  = "dev.terraform.tfstate"
  }
}

module "RG" {
  source   = "./modules/RG"
  rgname   = var.rgname
  location = var.location
}

module "azure_storage_account" {
  source               = "./modules/storage_account"
  storage_account_name = var.storage_account_name
  rgname               = var.rgname
  location             = var.location
}
