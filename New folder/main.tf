# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.69.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "e7fe9033-b818-441a-8a7b-772834afc53b"
  client_id       = "6db7f72e-a05a-4545-94b9-d2eb41fb8f8e"
  client_secret   = "WR98Q~-AsJc-2HoSowlOam4-YiIm9gWGwMyiMdCb"
  tenant_id       = "9680a610-ed23-40ff-856f-209dd7a0a508"


}

terraform {
  backend "azurerm" {
    storage_account_name = "tanyyastatefile"
    container_name       = "terrafromstatefile"
    key                  = "Remote.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "JcNC8B/vf9hxnWDOEflvZtPJFuKS0fptofpzTBbpXK17XOxeulzgttaYccPOFmwg25OEB/K3lPqd+AStLM31rw=="
  }
}




# Create a resource group with variables 
resource "azurerm_resource_group" "RG2" {
  name     = var.rgname
  location = var.rglocation
}

# Create a virtual network within the resource group with  variables
resource "azurerm_virtual_network" "Vnet2" {
  name                = var.vnetname
  resource_group_name = var.rgname
  location            = var.rglocation
  address_space       = ["10.1.0.0/22"]
}
