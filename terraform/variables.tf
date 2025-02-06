variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "5aadc750-a849-47ed-b3b8-0c41a5f3f9f9"
}

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



locals {
  environment = "environments/${terraform.workspace}"
  backend_pools           = jsondecode(file("${local.environment}/backend_pools.json"))
  backend_settings        = jsondecode(file("${local.environment}/backend_settings.json"))
  error_configurations    = jsondecode(file("${local.environment}/error_configurations.json"))
  frontend_ports          = jsondecode(file("${local.environment}/frontend_ports.json"))
  listeners               = jsondecode(file("${local.environment}/listeners.json"))
  probes                  = jsondecode(file("${local.environment}/probes.json"))
  redirect_configurations = jsondecode(file("${local.environment}/redirect_configurations.json"))
  rewrite_rule_sets       = jsondecode(file("${local.environment}/rewrite_rule_sets.json"))
  routing_rules           = jsondecode(file("${local.environment}/routing_rules.json"))
  ssl_certificates        = jsondecode(file("${local.environment}/ssl_certificates.json"))
  url_path_maps           = jsondecode(file("${local.environment}/url_path_maps.json"))
}