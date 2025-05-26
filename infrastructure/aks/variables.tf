variable "aks_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "location" {
  type        = string
  description = "Azure region for the AKS cluster"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group in which to deploy the AKS cluster"
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
  description = "Size of the VMs in the default node pool"
}

