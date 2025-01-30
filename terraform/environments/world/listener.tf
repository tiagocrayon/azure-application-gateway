variable "listener" {
  type = list(object({
    name                            = string
    frontend_ip_configuration_name  = string
    frontend_port_name              = string
    protocol                        = string
    host_names                      = optional(list(string))
    ssl_certificate_name            = optional(string)
    ssl_profile_id                  = optional(string)
  }))
  default = [
    #REDIRECT
    {
      name                           = "360imprimir_pt-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     = ["imprimir360.pt", "www.imprimir360.pt"]
    },
    {
      name                           = "imprimir_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     =  ["imprimir.pt", "www.imprimir.pt"]
    },
    {
      name                           = "imprimir_pt-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     = ["imprimir.pt", "www.imprimir.pt"]
    },
    {
      name                           = "360print_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     =  ["360print.pt", "www.360print.pt"]
    },
    {
      name                           = "360print_pt-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     = ["360print.pt", "www.360print.pt"]
    },

    #FORWARD
    {
      name                           = "360imprimir_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.360imprimir.pt", "360imprimir.pt"]
    },
    {
      name                           = "360imprimir_es-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.360imprimir.es", "360imprimir.es"]
    },
    {
      name                           = "bizay_at-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.at", "bizay.at"]
    },
    {
      name                           = "bizay_be-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.be", "bizay.be"]
    },
    {
      name                           = "bizay_ch-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.ch", "bizay.ch"]
    },
    {
      name                           = "bizay_co_uk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.uk", "bizay.co.uk"]
    },
    {
      name                           = "bizay_cz-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.cz", "bizay.cz"]
    },
    {
      name                           = "bizay_de-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.de", "bizay.de"]
    },
    {
      name                           = "bizay_dk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.dk", "bizay.dk"]
    },
    {
      name                           = "bizay_es-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.es", "bizay.es"]
    },
    {
      name                           = "bizay_fi-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.fi", "bizay.fi"]
    },
    {
      name                           = "bizay_fr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.fr", "bizay.fr"]
    },
    {
      name                           = "bizay_ie-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.ie", "bizay.ie"]
    },
    {
      name                           = "bizay_it-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.it", "bizay.it"]
    },
    {
      name                           = "bizay_no-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.no", "bizay.no"]
    },
    {
      name                           = "bizay_nl-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.nl", "bizay.nl"]
    },
    {
      name                           = "bizay_pl-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.pl", "bizay.pl"]
    },
    {
      name                           = "bizay_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.pt", "bizay.pt"]
    },
    {
      name                           = "bizay_se-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.se", "bizay.se"]
    },
    {
      name                           = "bizay_au-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.au", "bizay.au"]
    },
    {
      name                           = "bizay_nz-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.nz", "bizay.nz"]
    },
    {
      name                           = "bizay_co_nz-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.nz", "bizay.co.nz"]
    },
    {
      name                           = "360onlineprint_com-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.360onlineprint.com", "360onlineprint.com"]
    },
    {
      name                           = "360onlineprint_ca-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.360onlineprint.ca", "360onlineprint.ca"]
    },
    {
      name                           = "bizay_com_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.mx", "bizay.com.mx"]
    },
    {
      name                           = "bizay_bg-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.bg", "bizay.bg"]
    },
    {
      name                           = "bizay_hr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.hr", "bizay.hr"]
    },
    {
      name                           = "bizay_ee-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.ee", "bizay.ee"]
    },
    {
      name                           = "bizay_gr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.gr", "bizay.gr"]
    },
    {
      name                           = "bizay_hu-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.hu", "bizay.hu"]
    },
    {
      name                           = "bizay_lv-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.lv", "bizay.lv"]
    },
    {
      name                           = "bizay_li-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.li", "bizay.li"]
    },
    {
      name                           = "bizay_lt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.lt", "bizay.lt"]
    },
    {
      name                           = "bizay_lu-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.lu", "bizay.lu"]
    },
    {
      name                           = "bizay_com_mt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.mt", "bizay.com.mt"]
    },
    {
      name                           = "bizay_com_ro-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.ro", "bizay.com.ro"]
    },
    {
      name                           = "bizay_qa-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.qa", "bizay.qa"]
    },
    {
      name                           = "bizay_sk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.sk", "bizay.sk"]
    },
    {
      name                           = "bizay_si-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.si", "bizay.si"]
    },
    {
      name                           = "bizay_ae-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.ae", "bizay.ae"]
    },
    {
      name                           = "bizay_com_ar-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.ar", "bizay.com.ar"]
    },
    {
      name                           = "bizay_cl-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.cl", "bizay.cl"]
    },
    {
      name                           = "bizay_com_cn-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.cn", "bizay.com.cn"]
    },
    {
      name                           = "bizay_com_hk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.hk", "bizay.com.hk"]
    },
    {
      name                           = "bizay_co_in-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.in", "bizay.co.in"]
    },
    {
      name                           = "bizay_co_il-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.il", "bizay.co.il"]
    },
    {
      name                           = "bizay_com_my-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.my", "bizay.com.my"]
    },
    {
      name                           = "bizay_co_ma-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.ma", "bizay.co.ma"]
    },
    {
      name                           = "bizay_com_ph-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.ph", "bizay.com.ph"]
    },
    {
      name                           = "bizay_ru-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.ru", "bizay.ru"]
    },
    {
      name                           = "bizay_com_sg-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.sg", "bizay.com.sg"]
    },
    {
      name                           = "bizay_co_za-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.za", "bizay.co.za"]
    },
    {
      name                           = "bizay_co_kr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.co.kr", "bizay.co.kr"]
    },
    {
      name                           = "bizay_com_tr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.tr", "bizay.com.tr"]
    },
    {
      name                           = "bizay_com_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com.br", "bizay.com.br"]
    },
    {
      name                           = "bizay_com-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.bizay.com", "bizay.com"]
    },
    {
      name                           = "imgprocessor_PT-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessor.360imprimir.pt"]
    },
    {
      name                           = "imgprocessorwebapi_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessorwebapi.360imprimir.pt"]
    },
    {
      name                           = "userimagesservice_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.pt"]
    },
    {
      name                           = "userimagesservice_es-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.es"]
    },
    {
      name                           = "userimageservicept-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimageservicept.360imprimir.europe"]
    },
    {
      name                           = "studioclient_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.360imprimir.pt"]
    },
    {
      name                           = "studioclientpt_europe-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientpt.360imprimir.europe"]
    },
    {
      name                           = "mailer_360imprimir_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.mailer.360imprimir.pt"]
    },
    {
      name                           = "api_360imprimir_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["api.360imprimir.pt"]
    },
    {
      name                           = "imgprocessor_es-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessor.360imprimir.es"]
    }
  ]
}
