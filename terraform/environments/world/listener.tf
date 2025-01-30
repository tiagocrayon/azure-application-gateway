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
      name                           = "studio360eventsourcing_beta_com-listener-https-9590"
      frontend_ip_configuration_name = "public-frontend-ip"
      frontend_port_name             = "port-9590"
      protocol                       = "Https"
      ssl_certificate_name           = "certificado-1"
      host_names                     = ["studioeventsourcing.beta.360imprimir.com"]
    }
  ]
}
