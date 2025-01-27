variable "routing_rule" {
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
    {
      name                       = "YOUTRACK-route-rule-https"
      priority                   = 1
      http_listener_name         = "YOUTRACK-listener-https"
      rule_type                  = "PathBasedRouting"
      # backend_address_pool_name  = "BACKEND.YOUTRACK"
      # backend_http_settings_name = "Http-settings-8112"
      # rewrite_rule_set_name      = "rewrite-set-rule-hostname"
      url_path_map_name          = "YOUTRACK-url-path-map"
    },
    {
      name                        = "YOUTRACK-route-rule-http"
      priority                    = 2
      http_listener_name          = "YOUTRACK-listener-http"
      rule_type                   = "Basic"
      redirect_configuration_name = "YOUTRACK-to-https-redirect"
    },
  ]
}