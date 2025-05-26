resource_group_name = "rg-dev"
location            = "East US"
acr_name = "devacsdev795478"

aks_name   = "hellosdev"
dns_prefix = "hell-dev"
node_count = 1
vm_size    = "Standard_D2ps_v6"
keyvault_name = "skeyvault78912543"
tenant_id = "4b388488-8ba8-42e2-a417-920495b5116b"

subnet_name      = "hello"
address_space    = ["10.0.0.0/16"]
subnet_prefixes  = ["10.0.1.0/24"]
vnet_name        = "project"
// Dev environment variables
