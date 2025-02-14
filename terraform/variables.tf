
locals {
  environment = "environments/${terraform.workspace}"
  azure_env               = jsondecode(file("${local.environment}/azure_env.json"))
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