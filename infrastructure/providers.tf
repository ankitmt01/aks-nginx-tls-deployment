terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.3.0"
}


provider "azurerm" {
  features {}
  // client_id       = '$(client_id)'
  // client_secret   = '$(client_secret)'
  // tenant_id       = '$(tenant_id)'
  // subscription_id = '$(subscription_id)'
}

