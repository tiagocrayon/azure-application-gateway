
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.17.0"
    }
  }
  # #REMOTE STATE
  # backend "azurerm" {
  #   resource_group_name   = var.resource_group_name        # TODO
  #   storage_account_name  = "terraformstatestore9876"          # TODO
  #   container_name       = "tfstate"
  #   key                  = "${terraform.workspace}.tfstate"
  # }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}
