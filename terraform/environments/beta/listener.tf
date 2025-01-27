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
  ]
}
