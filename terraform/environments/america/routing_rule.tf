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
      name                        = "studioclient-route-rule-https"
      priority                    = 1
      http_listener_name          = "studioclient-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studioclient-to-http-9194-redirect"
    },
    {
      name                        = "studioclient-route-rule-http"
      priority                    = 2
      http_listener_name          = "studioclient-listener-http-9194"
      rule_type                   = "Basic"
    },
    {
      name                        = "studiotemplategenerator-route-rule-https"
      priority                    = 3
      http_listener_name          = "studiotemplategenerator-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studiotemplategenerator-to-http-9491-redirect"
    },
    {
      name                        = "studiotemplategenerator-route-rule-http"
      priority                    = 4
      http_listener_name          = "studiotemplategenerator-listener-http-9491"
      rule_type                   = "Basic"
    }
  ]
}