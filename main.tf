terraform {
    backend "azurerm" {
        resource_group_name = "TerraformDemo"
        storage_account_name = "terraformcodeopz"
        container_name = "tfstatefile"
        key = "dev.terraform.tfstate"
    }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.resource_group_location
  
}
