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

    #HTTP -> HTTPS
    # http-request redirect code 301 location \ https://www.%[hdr(host)]%[capture.req.uri] if { hdr(host) -f /etc/haproxy/redirect2www.cfg } ! { hdr_beg(host) -f /etc/haproxy/redirect_beg_exceptions.cfg }
    # HOST 360imprimir.com.mx definido em "360imprimir_Administrative_BR-route-rule-https-443"
    # HOST bizay.ca definido em "BIZAY_CA_MX_360imprimir-route-rule-https-443"
    # HOST bizay.com definido em "BIZAY_COM_US_MX_360imprimir-route-rule-https-443"

    #https://www.360imprimir.com.mx
    {
      name                        = "360imprimir_com_mx-listener-https-443"
      priority                    = 48
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-NA-CT"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "360imprimir_mx-route-rule-http-80"
      priority                    = 49
      rule_type                   = "Basic"
      http_listener_name          = "360imprimir_mx-listener-http-80"
      redirect_configuration_name = "redirect-360imprimir-mx"
    },
    {
      name                        = "imprimir360_mx-route-rule-http-80"
      priority                    = 50
      rule_type                   = "Basic"
      http_listener_name          = "imprimir360_mx-listener-http-80"
      redirect_configuration_name = "redirect-imprimir360-mx"
    },
    {
      name                        = "imprimir360_com_mx-route-rule-http-80"
      priority                    = 51
      rule_type                   = "Basic"
      http_listener_name          = "imprimir360_com_mx-listener-http-80"
      redirect_configuration_name = "redirect-imprimir360-com-mx"
    },
    #https://www.360imprimir.com.br
    {
      name                        = "360imprimir_com_br-listener-https-443"
      priority                    = 52
      rule_type                   = "PathBasedRouting"
      url_path_map_name           = "360imprimir_Administrative_BR-url-path-map"
      backend_address_pool_name   = "BACKEND.PRD-BR-CT"
      backend_http_settings_name  = "Http-settings-82"
    },
    {
      name                        = "360imprimir_com_br-route-rule-http-80"
      priority                    = 53
      rule_type                   = "Basic"
      http_listener_name          = "360imprimir_com_br-listener-http-80"
      redirect_configuration_name = "redirect-360imprimir-com-br"
    },
    {
      name                        = "360print_com_br-route-rule-http-80"
      priority                    = 54
      rule_type                   = "Basic"
      http_listener_name          = "360print_com_br-listener-http-80"
      redirect_configuration_name = "redirect-360print-com-br"
    },
    {
      name                        = "imprimir360_com_br-route-rule-http-80"
      priority                    = 55
      rule_type                   = "Basic"
      http_listener_name          = "imprimir360_com_br-listener-http-80"
      redirect_configuration_name = "redirect-imprimir360-com-br"
    },

    #HTTPS
    {
      name                        = "360imprimir_Administrative_BR-route-rule-https-443"
      priority                    = 1
      http_listener_name          = "360imprimir_Administrative_BR-listener-https-443"
      rule_type                   = "PathBasedRouting"
      url_path_map_name           = "360imprimir_Administrative_BR-url-path-map"
      backend_address_pool_name   = "BACKEND.PRD-BR-CT"
      backend_http_settings_name  = "Http-settings-82"
    },
    {
      name                        = "auth_360imprimir-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "auth_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "favicon-http-settings-80"
    },
    {
      name                        = "360imprimir_BR-route-rule-https-443"
      priority                    = 5
      http_listener_name          = "360imprimir_BR-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-BR-CT"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "GEOIP_360imprimir-route-rule-https-443"
      priority                    = 7
      http_listener_name          = "GEOIP_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "favicon-http-settings-80"
    },
    {
      name                        = "MASTER_360imprimir-route-rule-https-443"
      priority                    = 9
      http_listener_name          = "MASTER_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "MX_360imprimir-route-rule-https-443"
      priority                    = 11
      http_listener_name          = "MX_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-NA-CT"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "BIZAY_CA_MX_360imprimir-route-rule-https-443"
      priority                    = 13
      http_listener_name          = "BIZAY_CA_MX_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-NA-CT"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "BIZAY_COM_US_MX_360imprimir-route-rule-https-443"
      priority                    = 15
      http_listener_name          = "BIZAY_COM_US_MX_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      redirect_configuration_name = "BIZAY_COM_US_MX_360imprimir-to-http-80-redirect"
    },
    {
      name                        = "STUDIO_360imprimir-route-rule-https-443"
      priority                    = 17
      http_listener_name          = "STUDIO_360imprimir-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
      backend_http_settings_name  = "heartbeat-http-settings-80"
    },
    {
      name                        = "API_360imprimir_BR-route-rule-https-443"
      priority                    = 19
      http_listener_name          = "API_360imprimir_BR-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-BR-CT"
      backend_http_settings_name  = "Http-settings-82"
    },
    {
      name                        = "API_360imprimir_MX-route-rule-https-443"
      priority                    = 21
      http_listener_name          = "API_360imprimir_MX-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-NA-CT"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "IMG_360imprimir_BR-route-rule-https-443"
      priority                    = 23
      http_listener_name          = "IMG_360imprimir_BR-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-IP-BR1_BE-IP-MX1"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "IMG_360imprimir_MX-route-rule-https-443"
      priority                    = 25
      http_listener_name          = "IMG_360imprimir_MX-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-IP-BR1_BE-IP-MX1"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "IMG_360imprimir_STUDIO-route-rule-https-443"
      priority                    = 27
      http_listener_name          = "IMG_360imprimir_STUDIO-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-IP-GLOBAL"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "IMG_API_360imprimir_BR-route-rule-https-443"
      priority                    = 29
      http_listener_name          = "IMG_API_360imprimir_BR-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-IP-BR1_BE-IP-GLOBAL"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "IMG_API_360imprimir_MX-route-rule-https-443"
      priority                    = 31
      http_listener_name          = "IMG_API_360imprimir_MX-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-IP-BR1_BE-IP-MX1_BE-IP-GLOBAL"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "studioclient_360imprimir_br-route-rule-https-443"
      priority                    = 33
      http_listener_name          = "studioclient_360imprimir_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9193"
    },
    {
      name                        = "studioclient_360imprimir_mx-route-rule-https-443"
      priority                    = 170
      http_listener_name          = "studioclient_360imprimir_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9194"
    },
    {
      name                        = "studio360coreapi-route-rule-https-9090"
      priority                    = 100
      http_listener_name          = "studio360coreapi-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9090"
    },
    {
      name                        = "studio360eventsourcing-route-rule-https-9590"
      priority                    = 150
      http_listener_name          = "studio360eventsourcing-listener-https-9590"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9590"
    },
    {
      name                        = "studio360templateapi-route-rule-https-9190"
      priority                    = 110
      http_listener_name          = "studio360templateapi-listener-https-9190"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9190"
    },
    {
      name                        = "studiotemplategenerator-route-rule-https-443"
      priority                    = 120
      http_listener_name          = "studiotemplategenerator-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.GLOBAL-DOCKER"
      backend_http_settings_name  = "Http-settings-9491"
    },
    {
      name                        = "userimagesservice_br-route-rule-https-9291"
      priority                    = 130
      http_listener_name          = "userimagesservice_br-listener-https-9291"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9291"
    },
    {
      name                        = "userimagesservice_mx-route-rule-https-9292"
      priority                    = 140
      http_listener_name          = "userimagesservice_mx-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9292"
    },
    {
      name                        = "studio360client_br-route-rule-https-443"
      priority                    = 160
      http_listener_name          = "studio360client_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.LATAM-DOCKER"
      backend_http_settings_name  = "Http-settings-9193"
    }
  ]
}