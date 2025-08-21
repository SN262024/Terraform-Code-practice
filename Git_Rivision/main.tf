terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id ="177b7e12-5f03-4f63-bcd1-ed6d1d776bff"
}

resource "azurerm_resource_group" "rg_Nikasi" {
  name     = "rg-Nikasi"
  location = "West Europe"
}
resource "azurerm_storage_account" "stg123" {
  name                     = "storageaccountnikasi"
  resource_group_name      = azurerm_resource_group.rg_Nikasi.name
  location                 = azurerm_resource_group.rg_Nikasi.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}