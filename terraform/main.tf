
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
    container_name       = "tfstate"
    key                  = "${terraform.workspace}.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "5aadc750-a849-47ed-b3b8-0c41a5f3f9f9"
  features {}
}

# Load environment variable
variable "environment" {
  type    = string
  default = "beta"
  description = "Specifies the environment to use"
}

module "environment" {
  source = "./environments/america" 
}
