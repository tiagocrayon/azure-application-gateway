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
    #REDIRECT
    {
      name                        = "360imprimir_pt-route-rule-http-80"
      priority                    = 1
      rule_type                   = "Basic"
      http_listener_name          = "360imprimir_pt-listener-http-80"
      redirect_configuration_name = "redirect-360imprimir-pt"
    },
    {
      name                        = "imprimir_pt-route-rule-http-80"
      priority                    = 1
      rule_type                   = "Basic"
      http_listener_name          = "imprimir_pt-listener-http-80"
      redirect_configuration_name = "redirect-imprimir-pt"
    },
    {
      name                        = "360print_pt-route-rule-http-80"
      priority                    = 1
      rule_type                   = "Basic"
      http_listener_name          = "360print_pt-listener-http-80"
      redirect_configuration_name = "redirect-360print-pt"
    },

    #FORWARD
    {
      name                        = "360imprimir_pt-route-rule-https-443"
      priority                    = 1
      http_listener_name          = "360imprimir_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "360imprimir_es-route-rule-https-443"
      priority                    = 2
      http_listener_name          = "360imprimir_es-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_at-route-rule-https-443"
      priority                    = 3
      http_listener_name          = "bizay_at-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_be-route-rule-https-443"
      priority                    = 4
      http_listener_name          = "bizay_be-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_ch-route-rule-https-443"
      priority                    = 5
      http_listener_name          = "bizay_ch-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_co_uk-route-rule-https-443"
      priority                    = 6
      http_listener_name          = "bizay_co_uk-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_cz-route-rule-https-443"
      priority                    = 7
      http_listener_name          = "bizay_cz-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_de-route-rule-https-443"
      priority                    = 8
      http_listener_name          = "bizay_de-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_dk-route-rule-https-443"
      priority                    = 9
      http_listener_name          = "bizay_dk-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_es-route-rule-https-443"
      priority                    = 10
      http_listener_name          = "bizay_es-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_fi-route-rule-https-443"
      priority                    = 11
      http_listener_name          = "bizay_fi-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_fr-route-rule-https-443"
      priority                    = 12
      http_listener_name          = "bizay_fr-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_ie-route-rule-https-443"
      priority                    = 13
      http_listener_name          = "bizay_ie-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_it-route-rule-https-443"
      priority                    = 14
      http_listener_name          = "bizay_it-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_no-route-rule-https-443"
      priority                    = 15
      http_listener_name          = "bizay_no-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_nl-route-rule-https-443"
      priority                    = 16
      http_listener_name          = "bizay_nl-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_pl-route-rule-https-443"
      priority                    = 17
      http_listener_name          = "bizay_pl-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_pt-route-rule-https-443"
      priority                    = 18
      http_listener_name          = "bizay_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_se-route-rule-https-443"
      priority                    = 19
      http_listener_name          = "bizay_se-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_au-route-rule-https-443"
      priority                    = 20
      http_listener_name          = "bizay_au-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_nz-route-rule-https-443"
      priority                    = 21
      http_listener_name          = "bizay_nz-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bizay_co_nz-route-rule-https-443"
      priority                    = 22
      http_listener_name          = "bizay_co_nz-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "360onlineprint_com-route-rule-https-443"
      priority                    = 23
      http_listener_name          = "360onlineprint_com-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "360onlineprint_ca-route-rule-https-443"
      priority                    = 24
      http_listener_name          = "360onlineprint_ca-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                         = "bizay_com_mx-route-rule-https-443"
      priority                     = 1
      http_listener_name           = "bizay_com_mx-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_bg-route-rule-https-443"
      priority                     = 2
      http_listener_name           = "bizay_bg-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_hr-route-rule-https-443"
      priority                     = 3
      http_listener_name           = "bizay_hr-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_ee-route-rule-https-443"
      priority                     = 4
      http_listener_name           = "bizay_ee-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_gr-route-rule-https-443"
      priority                     = 5
      http_listener_name           = "bizay_gr-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_hu-route-rule-https-443"
      priority                     = 6
      http_listener_name           = "bizay_hu-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_lv-route-rule-https-443"
      priority                     = 7
      http_listener_name           = "bizay_lv-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_li-route-rule-https-443"
      priority                     = 8
      http_listener_name           = "bizay_li-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_lt-route-rule-https-443"
      priority                     = 9
      http_listener_name           = "bizay_lt-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_lu-route-rule-https-443"
      priority                     = 10
      http_listener_name           = "bizay_lu-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_mt-route-rule-https-443"
      priority                     = 11
      http_listener_name           = "bizay_com_mt-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_ro-route-rule-https-443"
      priority                     = 12
      http_listener_name           = "bizay_com_ro-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_qa-route-rule-https-443"
      priority                     = 13
      http_listener_name           = "bizay_qa-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_sk-route-rule-https-443"
      priority                     = 14
      http_listener_name           = "bizay_sk-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_si-route-rule-https-443"
      priority                     = 15
      http_listener_name           = "bizay_si-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_ae-route-rule-https-443"
      priority                     = 16
      http_listener_name           = "bizay_ae-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_ar-route-rule-https-443"
      priority                     = 17
      http_listener_name           = "bizay_com_ar-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_cl-route-rule-https-443"
      priority                     = 18
      http_listener_name           = "bizay_cl-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_cn-route-rule-https-443"
      priority                     = 19
      http_listener_name           = "bizay_com_cn-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_hk-route-rule-https-443"
      priority                     = 20
      http_listener_name           = "bizay_com_hk-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_co_in-route-rule-https-443"
      priority                     = 21
      http_listener_name           = "bizay_co_in-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_co_il-route-rule-https-443"
      priority                     = 22
      http_listener_name           = "bizay_co_il-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_my-route-rule-https-443"
      priority                     = 23
      http_listener_name           = "bizay_com_my-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_co_ma-route-rule-https-443"
      priority                     = 24
      http_listener_name           = "bizay_co_ma-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_ph-route-rule-https-443"
      priority                     = 25
      http_listener_name           = "bizay_com_ph-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_ru-route-rule-https-443"
      priority                     = 26
      http_listener_name           = "bizay_ru-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_sg-route-rule-https-443"
      priority                     = 27
      http_listener_name           = "bizay_com_sg-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_co_za-route-rule-https-443"
      priority                     = 28
      http_listener_name           = "bizay_co_za-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_co_kr-route-rule-https-443"
      priority                     = 29
      http_listener_name           = "bizay_co_kr-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_tr-route-rule-https-443"
      priority                     = 30
      http_listener_name           = "bizay_com_tr-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com_br-route-rule-https-443"
      priority                     = 31
      http_listener_name           = "bizay_com_br-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "bizay_com-route-rule-https-443"
      priority                     = 32
      http_listener_name           = "bizay_com-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "360imprimir_pt_administrative-route-rule-https-443"
      priority                     = 33
      http_listener_name           = "360imprimir_pt-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-82"
    },
    {
      name                         = "360imprimir_es_administrative-route-rule-https-443"
      priority                     = 34
      http_listener_name           = "360imprimir_es-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name   = "Http-settings-82"
    },
    {
      name                         = "imgprocessor_pt-route-rule-https-443"
      priority                     = 35
      http_listener_name           = "imgprocessor_PT-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.BE-IP-PT1-BE-IP-PT2"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "imgprocessorwebapi_pt-route-rule-https-443"
      priority                     = 36
      http_listener_name           = "imgprocessorwebapi_pt-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.BE-IP-PT1-BE-IP-PT2-BE-IP-PT3"
      backend_http_settings_name   = "Http-settings-80"
    },
    {
      name                         = "userimagesservice_pt-route-rule-https-443"
      priority                     = 37
      http_listener_name           = "userimagesservice_pt-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.EUROPE-DOCKER01-EUROPE-DOCKER02"
      backend_http_settings_name   = "Http-settings-9290"
    },
    {
      name                         = "userimagesservice_es-route-rule-https-443"
      priority                     = 38
      http_listener_name           = "userimagesservice_es-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.EUROPE-DOCKER01-EUROPE-DOCKER02"
      backend_http_settings_name   = "Http-settings-9290"
    },
    {
      name                         = "userimageservicept-route-rule-https-443"
      priority                     = 39
      http_listener_name           = "userimageservicept-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.EUROPE-DOCKER01-EUROPE-DOCKER02"
      backend_http_settings_name   = "Http-settings-9290"
    },
    {
      name                         = "studioclient_pt-route-rule-https-443"
      priority                     = 40
      http_listener_name           = "studioclient_pt-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.EUROPE-DOCKER01-EUROPE-DOCKER02"
      backend_http_settings_name   = "Http-settings-9192"
    },
    {
      name                         = "studioclientpt_europe-route-rule-https-443"
      priority                     = 41
      http_listener_name           = "studioclientpt_europe-listener-https-443"
      rule_type                    = "Basic"
      backend_address_pool_name    = "BACKEND.EUROPE-DOCKER01-EUROPE-DOCKER02"
      backend_http_settings_name   = "Http-settings-9192"
    },
    {
      name                        = "mailer_360imprimir_pt-route-rule-https-443"
      priority                    = 90
      http_listener_name          = "mailer_360imprimir_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "api_360imprimir_pt-route-rule-https-443"
      priority                    = 91
      http_listener_name          = "api_360imprimir_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-CT-BO"
      backend_http_settings_name  = "Http-settings-82"
    },
    {
      name                        = "imgprocessor_es-route-rule-https-443"
      priority                    = 91
      http_listener_name          = "imgprocessor_es-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-IP-PT1-BE-IP-PT2"
      backend_http_settings_name  = "Http-settings-80"
    },
    {
      name                        = "bots_360imprimir_pt-route-rule-https-443"
      priority                    = 91
      http_listener_name          = "360imprimir_pt-listener-https-443"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.PRD-EU-BOTS"
      backend_http_settings_name  = "Http-settings-81"
    },

  ]
}