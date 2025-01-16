variable "routing_rule" {
  type = list(object({
    name                        = string
    priority                    = string
    rule_type                   = string
    http_listener_name          = string
    backend_address_pool_name   = optional(string)
    backend_http_settings_name  = optional(string)
    redirect_configuration_name = optional(string)
  }))
  default = [
    {
      name                       = "YOUTRACK-route-rule-https"
      priority                   = 1
      rule_type                  = "Basic"
      http_listener_name         = "YOUTRACK-listener-https"
      backend_address_pool_name  = "BACKEND.YOUTRACK"
      backend_http_settings_name = "Http-settings-8112" #"Https-settings-443" #"
      rewrite_rule_set_name      = "rewrite-set-rule-hostname"
    },
    {
      name                        = "YOUTRACK-route-rule-http"
      priority                   = 2
      rule_type                   = "Basic"
      http_listener_name          = "YOUTRACK-listener-http"
      redirect_configuration_name = "YOUTRACK-to-https-redirect" # Must match the definition above
    }
  ]
}
