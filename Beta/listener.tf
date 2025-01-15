variable "listener" {
  type = list(object({
    name                            = string
    frontend_ip_configuration_name  = string
    frontend_port_name              = string
    protocol                        = string
    ssl_certificate_name            = optional(string)
    ssl_profile_id                  = optional(string)
  }))
  default = [
    {
      name                           = "YOUTRACK-listener-https"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
    },
    {
      name                           = "YOUTRACK-listener-http"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-http"
      protocol                       = "Http"
    },
    # {
    #   name                           = "nefa_beta-listener-Http"
    #   frontend_ip_configuration_name = "public-frontend-ip"
    #   frontend_port_name             = "port-http"
    #   protocol                       = "Http"
    # },
    # {
    #   name                           = "nefa_beta-listener-https"
    #   frontend_ip_configuration_name = "public-frontend-ip"
    #   frontend_port_name             = "port-https"
    #   protocol                       = "Https"
    #   ssl_certificate_name           = "certificado-1"
    # },
    # {
    #   name                           = "360imprimir-beta.PT-listener-http"
    #   frontend_ip_configuration_name = "public-frontend-ip"
    #   frontend_port_name             = "port-http"
    #   protocol                       = "Http"
    # },
    # {
    #   name                           = "360imprimir-beta.PT-listener-https"
    #   frontend_ip_configuration_name = "public-frontend-ip"
    #   frontend_port_name             = "port-https"
    #   protocol                       = "Https"
    #   ssl_certificate_name           = "certificado-1"
    # },

  ]
}