terraform {
   backend "azurerm" {
    resource_group_name  = "Terraform_Test"
    storage_account_name = "terraforstr"
    container_name       = "terraform"
    key                  = "dev.terraform.tfstate"
   }
}

module "RG" {
  source   = "./module/RG"
  rgname   = var.rgname
  location = var.location
}
