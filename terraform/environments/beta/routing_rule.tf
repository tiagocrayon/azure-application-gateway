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
    {
      name                        = "beta_api_studio-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_api_studio-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_geoip-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_geoip-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessor_studio-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessor_studio-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessorwebapi-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessorwebapi-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessorwebapi_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessorwebapi_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessorwebapi_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessorwebapi_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessor_pt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessor_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessor_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessor_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imgprocessor_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imgprocessor_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-VM01-BE-BETA-VM02"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_mailer_pt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_mailer_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_mailer_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_mailer_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_mailer_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_mailer_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_360onlineprint_com-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_360onlineprint_com-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_360onlineprint_ca-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_360onlineprint_ca-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_au-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_au-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_nz-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_nz-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_nz-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_nz-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_api_360imprimir_pt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_api_360imprimir_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_360imprimir_pt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_360imprimir_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_360imprimir_es-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_360imprimir_es-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_at-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_at-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_be-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_be-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ch-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ch-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_uk-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_uk-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_cz-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_cz-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_de-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_de-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_dk-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_dk-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_es-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_es-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_fi-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_fi-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_fr-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_fr-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ie-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ie-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_it-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_it-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_no-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_no-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_nl-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_nl-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_pl-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_pl-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_pt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_se-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_se-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_za-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_za-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_ar-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_ar-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_bg-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_bg-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_cl-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_cl-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_cn-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_cn-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_hr-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_hr-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ee-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ee-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_gr-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_gr-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_hk-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_hk-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_hu-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_hu-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_in-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_in-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_il-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_il-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_lv-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_lv-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_li-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_li-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_lt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_lt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_my-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_my-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_mt-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_mt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_ma-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_ma-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_ph-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_ph-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_qa-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_qa-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_ro-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_ro-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ro-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ro-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ru-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ru-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_sg-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_sg-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_sk-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_sk-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_si-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_si-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_lu-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_lu-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_co_kr-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_co_kr-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_tr-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_tr-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ae-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ae-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },





    #SADSADADA
    {
      name                        = "beta_api_360imprimir_com_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_api_360imprimir_com_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_360imprimir_com_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_360imprimir_com_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_br-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_br-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_api_360imprimir_com_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_api_360imprimir_com_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_360imprimir_com_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_360imprimir_com_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imprimir360_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imprimir360_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_imprimir360_com_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_imprimir360_com_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_ca-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_ca-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_bizay_com_mx-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_bizay_com_mx-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "beta_us_bizay_com-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "beta_us_bizay_com-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "api_youtrack_360imprimir_com-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "api_youtrack_360imprimir_com-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.YOUTRACK"
      backend_http_settings_name  = "Http-settings-8112"
    }
  ]
}