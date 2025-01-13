
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  # #REMOTE STATE
  # backend "azurerm" {
  #   resource_group_name   = "TiagoIsabelinho"        # TODO
  #   storage_account_name  = "terraformstatestore9876"          # TODO
  #   container_name        = "tf-states"    # TODO
  #   key                    = "terraform.tfstate"         # State file name
  # }
}

provider "azurerm" {
  features {}
}