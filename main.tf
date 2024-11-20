terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "71699a83-2acf-404d-8e8a-8461b259718f"
  features {}
}

resource "azurerm_resource_group" "example" {
  count = var.user_variable
  name     = "example-resources"
  location = "West Europe"
}