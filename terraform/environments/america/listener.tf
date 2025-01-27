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
      name                           = "studio360coreapi-listener-https-9090"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-9090"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiocoreapi.360imprimir.com", "studiocoreapi.360imprimir.latam"]
    },
    {
      name                           = "studio360templateapi-listener-https-9190"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-9190"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplateapi.360imprimir.com", "studiotemplateapi.360imprimir.latam"]
    },
    {
      name                           = "studioclient-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioclient.360imprimir.com.mx"]
    },
    {
      name                           = "studioclient-listener-http-9194"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-http-9194"
      protocol                       = "Http"
    },
    {
      name                           = "userimagesservice_br-listener-https-9291"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-9291"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.com.br", "userimagesservicebr.360imprimir.latam"]
    },
    {
      name                           = "userimagesservice_mx-listener-https-9292"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-9292"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["userimagesservice.360imprimir.com.mx", "userimagesservicemx.360imprimir.latam"]
    },
    {
      name                           = "studiotemplategenerator-listener-https-443"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-443"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studiotemplategenerator.360imprimir.com", "studiotemplategenerator.360imprimir.latam"]
    },
    {
      name                           = "studiotemplategenerator-listener-http-9491"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-http-9491"
      protocol                       = "Http"
      host_names                     = ["studiotemplategenerator.360imprimir.com", "studiotemplategenerator.360imprimir.latam"]
    },
    {
      name                           = "studio360eventsourcing-listener-https-9590"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https-9590"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioeventsourcing.360imprimir.com", "studioeventsourcing.360imprimir.latam"]
    }
  ]
}
