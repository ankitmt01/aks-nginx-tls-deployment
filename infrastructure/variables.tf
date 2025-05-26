variable "aks_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the AKS cluster"
}

variable "vm_size" {
  type        = string
  description = "VM size for the AKS nodes"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "resource_group_name" {
  type        = string
  description = "Azure resource group name"
}


variable "acr_name" {
  type        = string
  description = "Azure Conatiner"
}

variable "keyvault_name" {
  type        = string
  description = "Azure Conatiner"
}

variable "tenant_id" {
  type        = string
  description = "Azure Conatiner"
}


variable "subnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}

variable "vnet_name" {
  type = string
}


