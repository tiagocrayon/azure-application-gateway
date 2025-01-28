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
      name                           = "360imprimir_Administrative_BR-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["360imprimir.com.br", "www.360imprimir.com.br"]
    },
    {
      name                           = "auth_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["auth.360imprimir.com", "authapi.360imprimir.com"]
    },
    {
      name                           = "360imprimir_BR-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["www.mailer.360imprimir.com.br"]
    },
    {
      name                           = "GEOIP_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["geoip.360imprimir.com"]
    },
    {
      name                           = "MASTER_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["master.360imprimir.com", "masterapi.360imprimir.com"]
    },
    {
      name                           = "MX_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["360imprimir.com.mx", "www.360imprimir.com.mx", "www.mailer.360imprimir.com.mx"]
    },
    {
      name                           = "BIZAY_CA_MX_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["bizay.ca", "www.bizay.ca"]
    },
    {
      name                           = "BIZAY_COM_US_MX_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["bizay.com", "www.bizay.com", "us.bizay.com"]
    },
    {
      name                           = "STUDIO_360imprimir-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studio.360imprimir.com", "studioapi.360imprimir.com"]
    },
    {
      name                           = "API_360imprimir_BR-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["api.360imprimir.com.br"]
    },
    {
      name                           = "API_360imprimir_MX-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["api.360imprimir.com.mx"]
    },
    {
      name                           = "IMG_360imprimir_BR-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessor.360imprimir.com.br"]
    },
    {
      name                           = "IMG_360imprimir_MX-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessor.360imprimir.com.mx"]
    },
    {
      name                           = "IMG_360imprimir_STUDIO-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioimgprocessor.360imprimir.com"]
    },
    {
      name                           = "IMG_API_360imprimir_BR-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessorwebapi.360imprimir.com.br"]
    },
    {
      name                           = "IMG_API_360imprimir_MX-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["imgprocessorwebapi.360imprimir.com.mx"]
    },
    {
      name                           = "studioclient_360imprimir_br_latam-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.360imprimir.com.br", "studioclientbr.360imprimir.latam"]
    },
    {
      name                           = "studioclient_360imprimir_mx_latam-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.360imprimir.com.mx", "studioclientmx.360imprimir.latam"]
    },
    {
      name                           = "studio360coreapi-listener-https-9090"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9090"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiocoreapi.360imprimir.com", "studiocoreapi.360imprimir.latam"]
    },
    {
      name                           = "studio360eventsourcing-listener-https-9590"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9590"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioeventsourcing.360imprimir.com", "studioeventsourcing.360imprimir.latam"]
    },
    {
      name                           = "studio360templateapi-listener-https-9190"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9190"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplateapi.360imprimir.com", "studiotemplateapi.360imprimir.latam"]
    },
    {
      name                           = "studiotemplategenerator-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplategenerator.360imprimir.com", "studiotemplategenerator.360imprimir.latam"]
    },
    {
      name                           = "userimagesservice_br_latam-listener-https-9291"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9291"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.com.br", "userimagesservicebr.360imprimir.latam"]
    },
    {
      name                           = "userimagesservice_mx_latam-listener-https-9292"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9292"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.com.mx", "userimagesservicemx.360imprimir.latam"]
    },
    {
      name                           = "studio360client_br_latam-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientbr.360imprimir.com.br", "studioclientbr.360imprimir.latam"]
    }
  ]
}
