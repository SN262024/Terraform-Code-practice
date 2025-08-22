terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-nikasi1"
    storage_account_name = "stgnikasi1"
    container_name       = "containernikasi"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff"
}

resource "azurerm_resource_group" "rg_Nikasi22" {
  name     = "rg-Nikasi22"
  location = "West Europe"
}
resource "azurerm_storage_account" "stg1111" {
  name                     = "storageaccountnikasi22"
  resource_group_name      = azurerm_resource_group.rg_Nikasi22.name
  location                 = azurerm_resource_group.rg_Nikasi22.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}