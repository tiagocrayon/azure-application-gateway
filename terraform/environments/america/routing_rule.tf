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
      name                        = "studioclient-route-rule-http"
      priority                    = 1
      http_listener_name          = "studioclient-listener-http-9194"
      rule_type                   = "Basic"
    },
    {
      name                        = "studioclient-route-rule-https"
      priority                    = 2
      http_listener_name          = "studioclient-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studioclient-to-http-9194-redirect"
    },
    {
      name                        = "studio360coreapi-route-rule-https"
      priority                    = 3
      http_listener_name          = "studio360coreapi-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.studio360coreapi"
      backend_http_settings_name  = "Http-settings-9090"
    },
    {
      name                        = "studio360eventsourcing-route-rule-https"
      priority                    = 4
      http_listener_name          = "studio360eventsourcing-listener-https-9590"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.studio360eventsourcing"
      backend_http_settings_name  = "Http-settings-9590"
    },
    {
      name                        = "studio360templateapi-route-rule-https"
      priority                    = 5
      http_listener_name          = "studio360templateapi-listener-https-9190"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.studio360templateapi"
      backend_http_settings_name  = "Http-settings-9190"
    },
    {
      name                        = "studiotemplategenerator-route-rule-https"
      priority                    = 6
      http_listener_name          = "studiotemplategenerator-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studiotemplategenerator-to-http-9491-redirect"
    },
    {
      name                        = "studiotemplategenerator-route-rule-http"
      priority                    = 7
      http_listener_name          = "studiotemplategenerator-listener-http-9491"
      rule_type                   = "Basic"
    },
    {
      name                        = "userimagesservice_br-route-rule-https"
      priority                    = 8
      http_listener_name          = "userimagesservice_br-listener-https-9291"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.userimagesservice_br"
      backend_http_settings_name  = "Http-settings-9291"
    },
    {
      name                        = "userimagesservice_mx-route-rule-https"
      priority                    = 9
      http_listener_name          = "userimagesservice_mx-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.userimagesservice_mx"
      backend_http_settings_name  = "Http-settings-9292"
    },
    {
      name                        = "studio360coreapi-route-rule-https"
      priority                    = 10
      http_listener_name          = "studio360coreapi-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.studio360coreapi"
      backend_http_settings_name  = "Http-settings-9090"
    },
    {
      name                        = "studio360eventsourcing-route-rule-https"
      priority                    = 11
      http_listener_name          = "studio360eventsourcing-listener-https-9590"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.studio360eventsourcing"
      backend_http_settings_name  = "Http-settings-9590"
    },
    {
      name                        = "studio360templateapi-route-rule-https"
      priority                    = 12
      http_listener_name          = "studio360templateapi-listener-https-9190"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.studio360templateapi"
      backend_http_settings_name  = "Http-settings-9190"
    },
    {
      name                        = "userimagesservice_br-route-rule-https"
      priority                    = 13
      http_listener_name          = "userimagesservice_br-listener-https-9291"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.userimagesservice_br"
      backend_http_settings_name  = "Http-settings-9291"
    },
    {
      name                        = "userimagesservice_mx-route-rule-https"
      priority                    = 14
      http_listener_name          = "userimagesservice_mx-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.userimagesservice_mx"
      backend_http_settings_name  = "Http-settings-9292"
    },
  ]
}