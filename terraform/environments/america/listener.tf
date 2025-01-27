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
      name                           = "360imprimir_Administrative_BR-listener-http-82"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-82"
      protocol                       = "Http"
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
      name                           = "auth_360imprimir-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     =  ["auth.360imprimir.com", "authapi.360imprimir.com"]
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
      name                           = "360imprimir_BR-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     =  ["www.mailer.360imprimir.com.br"]
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
      name                           = "GEOIP_360imprimir-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     =  ["geoip.360imprimir.com"]
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
      name                           = "MASTER_360imprimir-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
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
      name                           = "MX_360imprimir-listener-http-80"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-80"
      protocol                       = "Http"
      host_names                     = ["360imprimir.com.mx", "www.360imprimir.com.mx", "www.mailer.360imprimir.com.mx"]
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
      name                           = "studio360templateapi-listener-https-9190"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9190"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplateapi.360imprimir.com", "studiotemplateapi.360imprimir.latam"]
    },
    {
      name                           = "studioclient-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.360imprimir.com.mx", "studioclient.360imprimir.com.mx"]
    },
    {
      name                           = "userimagesservice_br-listener-https-9291"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9291"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.com.br", "userimagesservicebr.360imprimir.latam"]
    },
    {
      name                           = "userimagesservice_mx-listener-https-9292"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9292"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.com.mx", "userimagesservicemx.360imprimir.latam"]
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
      name                           = "studiotemplategenerator-listener-http-9491"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9491"
      protocol                       = "Http"
      host_names                     = ["studiotemplategenerator.360imprimir.com", "studiotemplategenerator.360imprimir.latam"]
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
      name                           = "studio360client_br-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientbr.360imprimir.latam"]
    },
    {
      name                           = "studio360client_br-listener-http-9193"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9193"
      protocol                       = "Http"
    },
    {
      name                           = "studio360client_mx-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclientmx.360imprimir.latam"]
    },
    {
      name                           = "studio360client_mx-listener-http-9194"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9194"
      protocol                       = "Http"
    }
  ]
}
