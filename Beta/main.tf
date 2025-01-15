
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.15.0"
    }
  }
  #REMOTE STATE
  backend "azurerm" {
    resource_group_name   = "TiagoIsabelinho"        # TODO
    storage_account_name  = "terraformstatestore9876"          # TODO
    container_name        = "tf-states"    # TODO
    key                    = "terraform.tfstate"         # State file name
  }
}

provider "azurerm" {
  subscription_id = "5aadc750-a849-47ed-b3b8-0c41a5f3f9f9"
  features {}
}