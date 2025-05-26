resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


module "network" {
  source           = "./network" # Adjust this based on your folder structure
  depends_on = [azurerm_resource_group.rg]
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_name      = var.subnet_name
  address_space    = var.address_space
  subnet_prefixes  = var.subnet_prefixes
  vnet_name        = var.vnet_name
}

module "acr" {
  source              = "./acr"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_name = var.acr_name
}




module "aks" {
  source     = "./aks"
  depends_on = [azurerm_resource_group.rg]
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name   = var.aks_name
  dns_prefix = var.dns_prefix
  node_count = var.node_count
  vm_size    = var.vm_size


}


