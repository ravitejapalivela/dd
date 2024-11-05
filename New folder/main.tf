
terraform {
  backend "azurerm" {}
}


provider "azurerm" {
version = "3.90.0"
features {}
}

# Create a resource group without variables 
resource "azurerm_resource_group" "RG1" {
  name     = "terraformlearnings-tejas-RG2"
  location = "South India"
}
