terraform {
  backend "azurerm" {
    resource_group_name   = "hello"        # Your resource group name
    storage_account_name  = "store991"      # Your storage account name
    container_name        = "tfstate"        # Your blob container name
    key                    = "terraform.tfstate"         # The state file name
  }
}