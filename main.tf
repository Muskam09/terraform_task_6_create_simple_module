terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
  subscription_id = "6919eeb9-de7a-46ba-8188-b68082b9a8f1"
}

module "resource_group_storage" {
  source               = "Muskam09/resource_group_storage/azurerm"
  version              = "1.0.0"
  location             = "West Europe"
  resource_group_name  = "maksimens09-terraform-rg"
  storage_account_name = "maksimens09terrmstorage"
}