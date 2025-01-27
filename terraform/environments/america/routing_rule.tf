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
      name                        = "360imprimir_Administrative_BR-route-rule-https-443"
      priority                    = 1
      http_listener_name          = "360imprimir_Administrative_BR-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "360imprimir_Administrative_BR-to-http-82-redirect"
    },
    {
      name                        = "360imprimir_Administrative_BR-route-rule-http-82"
      priority                    = 2
      http_listener_name          = "360imprimir_Administrative_BR-listener-http-82"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-BR-CT"
      backend_http_settings_name  = "Http-settings-82"
    },
    {
      name                        = "auth_360imprimir-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "auth_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "auth_360imprimir-to-http-82-redirect"
    },
    {
      name                        = "auth_360imprimir-route-rule-http-80"
      priority                    = 4
      http_listener_name          = "auth_360imprimir-listener-http-80"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "360imprimir_BR-route-rule-https-443"
      priority                    = 5
      http_listener_name          = "360imprimir_BR-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "360imprimir_BR-to-http-80-redirect"
    },
    {
      name                        = "360imprimir_BR-route-rule-http-80"
      priority                    = 6
      http_listener_name          = "360imprimir_BR-listener-http-80"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-BR-CT"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "GEOIP_360imprimir-route-rule-https-443"
      priority                    = 7
      http_listener_name          = "GEOIP_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "GEOIP_360imprimir-to-http-80-redirect"
    },
    {
      name                        = "GEOIP_360imprimir-route-rule-http-80"
      priority                    = 8
      http_listener_name          = "GEOIP_360imprimir-listener-http-80"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "MASTER_360imprimir-route-rule-https-443"
      priority                    = 9
      http_listener_name          = "MASTER_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "MASTER_360imprimir-to-http-80-redirect"
    },
    {
      name                        = "MASTER_360imprimir-route-rule-http-80"
      priority                    = 10
      http_listener_name          = "MASTER_360imprimir-listener-http-80"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "MX_360imprimir-route-rule-https-443"
      priority                    = 11
      http_listener_name          = "MX_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "MX_360imprimir-to-http-80-redirect"
    },
    {
      name                        = "MX_360imprimir-route-rule-http-80"
      priority                    = 12
      http_listener_name          = "MX_360imprimir-listener-http-80"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-NA-CT"
      backend_http_settings_name  = "Http-settings-80"
    },







    {
      name                        = "studio360coreapi-route-rule-https"
      priority                    = 100
      http_listener_name          = "studio360coreapi-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9090"
    },
    {
      name                        = "studio360templateapi-route-rule-https"
      priority                    = 110
      http_listener_name          = "studio360templateapi-listener-https-9190"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9190"
    },
    {
      name                        = "studiotemplategenerator-route-rule-https"
      priority                    = 120
      http_listener_name          = "studiotemplategenerator-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studiotemplategenerator-to-http-9491-redirect"
    },
    {
      name                        = "userimagesservice_br-route-rule-https"
      priority                    = 130
      http_listener_name          = "userimagesservice_br-listener-https-9291"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9291"
    },
    {
      name                        = "userimagesservice_mx-route-rule-https"
      priority                    = 140
      http_listener_name          = "userimagesservice_mx-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9292"
    },
    {
      name                        = "studio360eventsourcing-route-rule-https"
      priority                    = 150
      http_listener_name          = "studio360eventsourcing-listener-https-9590"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9590"
    },
    {
      name                        = "studio360client_br-route-rule-https"
      priority                    = 160
      http_listener_name          = "studio360client_br-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studio360client_br-to-http-9193-redirect"
    },
    {
      name                        = "studio360client_mx-route-rule-https"
      priority                    = 170
      http_listener_name          = "studio360client_mx-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "studio360client_mx-to-http-9194-redirect"
    }
  ]
}