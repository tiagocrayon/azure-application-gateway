variable "routing_rules" {
  type = list(object({
    name                        = string
    priority                    = string
    http_listener_name          = string
    rule_type                   = string
    backend_address_pool_name   = optional(string)
    backend_http_settings_name  = optional(string)
    url_path_map_name           = optional(string)
    redirect_configuration_name = optional(string)
  }))
  default = [
  ]
}