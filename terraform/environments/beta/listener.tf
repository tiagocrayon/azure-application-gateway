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
      name                           = "studiocoreapi_beta_dev-listener-https-9090"
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
      name                           = "userimagesservice_beta_pt-listener-https-9291"
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
  ]
}
