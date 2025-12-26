terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "akkc"
    storage_account_name = "storageaccountakkc007"
    container_name       = "tfstatefile-container"
    key                  = "terratest.tfstate"
    #use_azuread_auth     = true
    
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = var.subscription_id
}
