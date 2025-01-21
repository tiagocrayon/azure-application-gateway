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
      name                           = "YOUTRACK-listener-https"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-https"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                      = ["api.youtrack.360imprimir.com"]
    },
    {
      name                           = "YOUTRACK-listener-http"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-http"
      protocol                       = "Http"
    }
  ]
}