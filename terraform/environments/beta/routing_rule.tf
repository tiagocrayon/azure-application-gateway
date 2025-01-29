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
    #HTTPS
    {
      name                        = "360imprimir_beta_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "360imprimir_beta_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "360imprimir_beta_pt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "360imprimir_beta_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "studio360eventsourcing_beta_dev-route-rule-https-9590"
      priority                    = 3
      http_listener_name          = "studio360eventsourcing_beta_dev-listener-https-9590"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9590"
    },
    {
      name                        = "studio360eventsourcing_beta_com-route-rule-https-9590"
      priority                    = 3
      http_listener_name          = "studio360eventsourcing_beta_com-listener-https-9590"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9590"
    },
    {
      name                        = "studiocoreapi_beta_dev-route-rule-https-9090"
      priority                    = 3
      http_listener_name          = "studiocoreapi_beta_dev-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9090"
    },
    {
      name                        = "studiocoreapi_beta_com-route-rule-https-9090"
      priority                    = 3
      http_listener_name          = "studiocoreapi_beta_com-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9090"
    },
    {
      name                        = "studiotemplateapi_beta_dev-route-rule-https-9190"
      priority                    = 3
      http_listener_name          = "studiotemplateapi_beta_dev-listener-https-9190"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9190"
    },
    {
      name                        = "studiotemplateapi_beta_com-route-rule-https-9190"
      priority                    = 3
      http_listener_name          = "studiotemplateapi_beta_com-listener-https-9190"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9190"
    },
    {
      name                        = "userimagesservicept_beta_dev-route-rule-https-9290"
      priority                    = 3
      http_listener_name          = "userimagesservicept_beta_dev-listener-https-9290"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9290"
    },
    {
      name                        = "userimagesservice_beta_pt-route-rule-https-9290"
      priority                    = 3
      http_listener_name          = "userimagesservice_beta_pt-listener-https-9290"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9290"
    },
    {
      name                        = "userimagesservicebr_beta_dev-route-rule-https-9291"
      priority                    = 3
      http_listener_name          = "userimagesservicebr_beta_dev-listener-https-9291"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9291"
    },
    {
      name                        = "userimagesservice_beta_com_br-route-rule-https-9291"
      priority                    = 3
      http_listener_name          = "userimagesservice_beta_com_br-listener-https-9291"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9291"
    },
    {
      name                        = "userimagesservicemx_beta_dev-route-rule-https-9292"
      priority                    = 3
      http_listener_name          = "userimagesservicemx_beta_dev-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9292"
    },
    {
      name                        = "userimagesservice_beta_com_mx-route-rule-https-9292"
      priority                    = 3
      http_listener_name          = "userimagesservice_beta_com_mx-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9292"
    },
    {
      name                        = "studiotemplategenerator_beta_com-route-rule-https-9490"
      priority                    = 3
      http_listener_name          = "studiotemplategenerator_beta_com-listener-https-9490"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9490"
    },
    {
      name                        = "studiotemplategenerator_beta_dev-route-rule-https-9490"
      priority                    = 3
      http_listener_name          = "studiotemplategenerator_beta_dev-listener-https-9490"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9490"
    },
    {
      name                        = "studioclient_beta_pt-route-rule-https-9192"
      priority                    = 3
      http_listener_name          = "studioclient_beta_pt-listener-https-9192"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9192"
    },
    {
      name                        = "studioclient_beta_com_br-route-rule-https-9193"
      priority                    = 3
      http_listener_name          = "studioclient_beta_com_br-listener-https-9193"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9193"
    },
    {
      name                        = "studioclient_beta_com_mx-route-rule-https-9194"
      priority                    = 3
      http_listener_name          = "studioclient_beta_com_mx-listener-https-9194"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9194"
    },
    {
      name                        = "studioclientpt_beta_dev-route-rule-https-9292"
      priority                    = 3
      http_listener_name          = "studioclientpt_beta_dev-listener-https-9292"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9292"
    },
    {
      name                        = "studioclientbr_beta_dev-route-rule-https-9193"
      priority                    = 3
      http_listener_name          = "studioclientbr_beta_dev-listener-https-9193"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9193"
    },
    {
      name                        = "studioclientmx_beta_dev-route-rule-https-9194"
      priority                    = 3
      http_listener_name          = "studioclientmx_beta_dev-listener-https-9194"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9194"
    },
    {
      name                        = "beta2masterapi-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta2masterapi-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "betaapimaster-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "betaapimaster-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_master-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_master-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_auth-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_auth-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_api_auth-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_api_auth-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_studio-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_studio-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
  ]
}