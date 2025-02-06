variable "resource_group_name" {
  description = "Azure Resource Group"
  type        = string
  default     = "TiagoIsabelinho"
}

variable "virtual_network_name" {
  description = "Azure Virtual Network"
  type        = string
  default     = "360imprimir-beta-vnw"
}

variable "subnet_name" {
  description = "Azure Subnet"
  type        = string
  default     = "default"
}

variable "public_ip_name" {
  description = "Azure Public IP"
  type        = string
  default     = "beta-agw-public-ip"
}

