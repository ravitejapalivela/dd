# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
skip_provider_registration = true
  features {}
  subscription_id = "afd1c8de-d6b4-4c56-a061-1ee0ab5b8bcf"
  client_id       = "49d0322d-8724-4f89-9d6e-450bc63f34d3"
  client_secret   = "wIT8Q~Ck866BIRAztd72zJmgHf_s9JIkPZZZoalg"
  tenant_id       = "f0e2d0aa-47db-45f2-afe6-728cf46a115c"


}


# Create a resource group without variables 
resource "azurerm_resource_group" "RG1" {
  name     = "terraformlearnings-tejas-RG2"
  location = "South India"
}

terraform {
  backend "azurerm" {
    storage_account_name = "testing202456"
    container_name       = "testing123321"
    key                  = "terraformdev.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "yUdwIg7Ep4CxQURqINJOZcb/ZiL7mP9A2WkMDqSOTcG9Ku99HWNqw0k0ZVZ7hTe1PAGX0/HxmePx+AStTQIfYg=="
  }
}


