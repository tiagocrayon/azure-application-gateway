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
    #REDIRECT HTTP
    #https://beta.bizay.ca 
    {
      name                           = "beta_bizay_ca-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     = ["beta.360onlineprint.ca"]
    },
    #https://beta.bizay.ro
    {
      name                           = "beta_bizay_ro-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     = ["beta.bizay.ro"]
    },
    #FORWARD HTPS
    {
      name                           = "360imprimir_beta_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360imprimir.com.br"]
    },
    {
      name                           = "360imprimir_beta_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["360imprimir.pt"]
    },
    {
      name                           = "studio360eventsourcing_beta_dev-listener-https-9590"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9590"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioeventsourcing.beta.360imprimir.dev"]
    },
    {
      name                           = "studio360eventsourcing_beta_com-listener-https-9590"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9590"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioeventsourcing.beta.360imprimir.com"]
    },
    {
      name                           = "studiocoreapi_beta_dev-listener-https-9090"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9090"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiocoreapi.beta.360imprimir.dev"]
    },
    {
      name                           = "studiocoreapi_beta_com-listener-https-9090"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9090"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiocoreapi.beta.360imprimir.com"]
    },
    {
      name                           = "studiotemplateapi_beta_dev-listener-https-9190"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9190"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplateapi.beta.360imprimir.dev"]
    },
    {
      name                           = "studiotemplateapi_beta_com-listener-https-9190"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9190"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplateapi.beta.360imprimir.com"]
    },
    {
      name                           = "userimagesservicept_beta_dev-listener-https-9290"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9290"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservicept.beta.360imprimir.dev"]
    },
    {
      name                           = "userimagesservice_beta_pt-listener-https-9290"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9290"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.beta.360imprimir.pt"]
    },
    {
      name                           = "userimagesservicebr_beta_dev-listener-https-9291"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9291"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservicebr.beta.360imprimir.dev"]
    },
    {
      name                           = "userimagesservice_beta_com_br-listener-https-9291"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9291"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.beta.360imprimir.com.br"]
    },
    {
      name                           = "userimagesservicemx_beta_dev-listener-https-9292"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9292"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservicemx.beta.360imprimir.dev"]
    },
    {
      name                           = "userimagesservice_beta_com_mx-listener-https-9292"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9292"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.beta.360imprimir.com.mx"]
    },
    {
      name                           = "studiotemplategenerator_beta_com-listener-https-9490"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9490"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplategenerator.beta.360imprimir.com"]
    },
    {
      name                           = "studiotemplategenerator_beta_dev-listener-https-9490"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9490"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplategenerator.beta.360imprimir.dev"]
    },
    {
      name                           = "studioclient_beta_pt-listener-https-9192"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9192"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.beta.360imprimir.pt"]
    },
    {
      name                           = "studioclient_beta_com_br-listener-https-9193"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9193"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.beta.360imprimir.com.br"]
    },
    {
      name                           = "studioclient_beta_com_mx-listener-https-9194"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9194"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.beta.360imprimir.com.mx"]
    },
    {
      name                           = "studioclientpt_beta_dev-listener-https-9292"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9292"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientpt.beta.360imprimir.dev"]
    },
    {
      name                           = "studioclientbr_beta_dev-listener-https-9193"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9193"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientbr.beta.360imprimir.dev"]
    },
    {
      name                           = "studioclientmx_beta_dev-listener-https-9194"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9194"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientmx.beta.360imprimir.dev"]
    },
    {
      name                           = "beta2masterapi-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta2masterapi.360imprimir.com"]
    },
    {
      name                           = "betaapimaster-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.api.master.360imprimir.com"]
    },
    {
      name                           = "beta_master-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.master.360imprimir.com"]
    },
    {
      name                           = "beta_auth-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.auth.360imprimir.com"]
    },
    {
      name                           = "beta_api_auth-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.api.auth.360imprimir.com"]
    },
    {
      name                           = "beta_studio-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.studio.360imprimir.com"]
    },
    {
      name                           = "beta_api_studio-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.api.studio.360imprimir.com"]
    },
    {
      name                           = "beta_geoip-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.geoip.360imprimir.com"]
    },
    {
      name                           = "beta_imgprocessor_studio-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessor.studio.360imprimir.com"]
    },
    {
      name                           = "beta_imgprocessorwebapi-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessorwebapi.360imprimir.pt"]
    },
    {
      name                           = "beta_imgprocessorwebapi_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessorwebapi.360imprimir.com.br"]
    },
    {
      name                           = "beta_imgprocessorwebapi_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessorwebapi.360imprimir.com.mx"]
    },
    {
      name                           = "beta_imgprocessor_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessor.360imprimir.pt"]
    },
    {
      name                           = "beta_imgprocessor_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessor.360imprimir.com.br"]
    },
    {
      name                           = "beta_imgprocessor_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imgprocessor.360imprimir.com.mx"]
    },
    {
      name                           = "beta_mailer_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.mailer.360imprimir.pt"]
    },
    {
      name                           = "beta_mailer_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.mailer.360imprimir.com.br"]
    },
    {
      name                           = "beta_mailer_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.mailer.360imprimir.com.mx"]
    },
    {
      name                           = "beta_360onlineprint_com-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360onlineprint.com"]
    },
    {
      name                           = "beta_360onlineprint_ca-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360onlineprint.ca"]
    },
    {
      name                           = "beta_bizay_au-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.au"]
    },
    {
      name                           = "beta_bizay_nz-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.nz"]
    },
    {
      name                           = "beta_bizay_co_nz-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.nz"]
    },
    {
      name                           = "beta_api_360imprimir_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.api.360imprimir.pt"]
    },
    {
      name                           = "beta_360imprimir_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360imprimir.pt"]
    },
    {
      name                           = "beta_360imprimir_es-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360imprimir.es"]
    },
    {
      name                           = "beta_bizay_at-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.at"]
    },
    {
      name                           = "beta_bizay_be-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.be"]
    },
    {
      name                           = "beta_bizay_ch-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ch"]
    },
    {
      name                           = "beta_bizay_co_uk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.uk"]
    },
    {
      name                           = "beta_bizay_cz-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.cz"]
    },
    {
      name                           = "beta_bizay_de-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.de"]
    },
    {
      name                           = "beta_bizay_dk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.dk"]
    },
    {
      name                           = "beta_bizay_es-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.es"]
    },
    {
      name                           = "beta_bizay_fi-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.fi"]
    },
    {
      name                           = "beta_bizay_fr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.fr"]
    },
    {
      name                           = "beta_bizay_ie-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ie"]
    },
    {
      name                           = "beta_bizay_it-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.it"]
    },
    {
      name                           = "beta_bizay_no-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.no"]
    },
    {
      name                           = "beta_bizay_nl-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.nl"]
    },
    {
      name                           = "beta_bizay_pl-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.pl"]
    },
    {
      name                           = "beta_bizay_pt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.pt"]
    },
    {
      name                           = "beta_bizay_se-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.se"]
    },
    {
      name                           = "beta_bizay_co_za-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.za"]
    },
    {
      name                           = "beta_bizay_com_ar-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.ar"]
    },
    {
      name                           = "beta_bizay_bg-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.bg"]
    },
    {
      name                           = "beta_bizay_cl-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.cl"]
    },
    {
      name                           = "beta_bizay_com_cn-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.cn"]
    },
    {
      name                           = "beta_bizay_hr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.hr"]
    },
    {
      name                           = "beta_bizay_ee-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ee"]
    },
    {
      name                           = "beta_bizay_gr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.gr"]
    },
    {
      name                           = "beta_bizay_com_hk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.hk"]
    },
    {
      name                           = "beta_bizay_hu-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.hu"]
    },
    {
      name                           = "beta_bizay_co_in-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.in"]
    },
    {
      name                           = "beta_bizay_co_il-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.il"]
    },
    {
      name                           = "beta_bizay_lv-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.lv"]
    },
    {
      name                           = "beta_bizay_li-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.li"]
    },
    {
      name                           = "beta_bizay_lt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.lt"]
    },
    {
      name                           = "beta_bizay_com_my-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.my"]
    },
    {
      name                           = "beta_bizay_com_mt-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.mt"]
    },
    {
      name                           = "beta_bizay_co_ma-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.ma"]
    },
    {
      name                           = "beta_bizay_com_ph-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.ph"]
    },
    {
      name                           = "beta_bizay_qa-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.qa"]
    },
    {
      name                           = "beta_bizay_com_ro-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.ro"]
    },
    {
      name                           = "beta_bizay_ro-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ro"]
    },
    {
      name                           = "beta_bizay_ru-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ru"]
    },
    {
      name                           = "beta_bizay_com_sg-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.sg"]
    },
    {
      name                           = "beta_bizay_sk-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.sk"]
    },
    {
      name                           = "beta_bizay_si-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.si"]
    },
    {
      name                           = "beta_bizay_lu-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.lu"]
    },
    {
      name                           = "beta_bizay_co_kr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.co.kr"]
    },
    {
      name                           = "beta_bizay_com_tr-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.tr"]
    },
    {
      name                           = "beta_bizay_ae-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ae"]
    },
    {
      name                           = "beta_api_360imprimir_com_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.api.360imprimir.com.br"]
    },
    {
      name                           = "beta_360imprimir_com_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360imprimir.com.br"]
    },
    {
      name                           = "beta_bizay_com_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.br"]
    },
    {
      name                           = "beta_api_360imprimir_com_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.api.360imprimir.com.mx"]
    },
    {
      name                           = "beta_360imprimir_com_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.360imprimir.com.mx"]
    },
    {
      name                           = "beta_imprimir360_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imprimir360.mx"]
    },
    {
      name                           = "beta_imprimir360_com_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.imprimir360.com.mx"]
    },
    {
      name                           = "beta_bizay_ca-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.ca"]
    },
    {
      name                           = "beta_bizay_com-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com"]
    },
    {
      name                           = "beta_bizay_com_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.bizay.com.mx"]
    },
    {
      name                           = "beta_us_bizay_com-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["beta.us.bizay.com"]
    },
    {
      name                           = "api_youtrack_360imprimir_com-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["api.youtrack.360imprimir.com"]
    }
  ]
}
