
# locals {
#   environment = "environments/${terraform.workspace}"
#   backend_pools           = jsondecode(file("${local.environment}/backend-pools.json"))
#   # backend_settings        = jsondecode(file("${local.environment}/backend-settings.json"))
#   error_configurations    = jsondecode(file("${local.environment}/error-configurations.json"))
#   frontend_port           = jsondecode(file("${local.environment}/frontend-port.json"))
#   listeners               = jsondecode(file("${local.environment}/listeners.json"))
#   probes                  = jsondecode(file("${local.environment}/probes.json"))
#   redirect_configurations = jsondecode(file("${local.environment}/redirect_configurations.json"))
#   rewrite_rule_sets       = jsondecode(file("${local.environment}/rewrite-rule-sets.json"))
#   routing_rules           = jsondecode(file("${local.environment}/routing-rules.json"))
#   # url_path_maps           = jsondecode(file("${local.environment}/url-path-maps.json"))
# }