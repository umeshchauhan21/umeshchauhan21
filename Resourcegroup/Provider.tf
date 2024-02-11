terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.89.0"
    }
  }
}

resource "azurerm_resource_group" "Rgs" {
  name     = "THCL-RG"
  location = " Central India"
}

# resource "azurerm_storage_account" "stgs" {
#   name                     = "stg28012024"
#   resource_group_name      = azurerm_resource_group.Rgs.name
#   location                 = azurerm_resource_group.Rgs.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }

# resource "azurerm_storage_container" "containers" {
#   name                  = "mycontainer"
#   storage_account_name  = azurerm_storage_account.stgs.name
#   container_access_type = "private"
# }
# terraform {


#   backend "azurerm" {
#     resource_group_name  = "THCL-RG"
#     storage_account_name = "stg28012024"
#     container_name       = "mycontainer"
#     key                  = "prod.terraform.mycontainer"
#   }
# }


provider "azurerm" {
  features {

  }
}

