variable "backend_settings" {
  type = list(object({
    name                    = string
    cookie_based_affinity   = string
    port                    = number
    protocol                = string
    request_timeout         = number
    pick_host_name_from_backend_address =  optional(string)
    probe_name              = optional(string)
  }))
  default = [
    {
      name                    = "Https-settings-443"
      cookie_based_affinity   = "Disabled"
      port                    = 443
      protocol                = "Https"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-80"
      cookie_based_affinity   = "Disabled"
      port                    = 80
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-8112"
      cookie_based_affinity   = "Disabled"
      port                    = 8112
      protocol                = "Http"
      request_timeout         = 20
      pick_host_name_from_backend_address = true
      probe_name              = "youtrack-health-probe"
    },
    {
      name                    = "Http-settings-default"
      cookie_based_affinity   = "Disabled"
      port                    = 8113
      protocol                = "Http"
      request_timeout         = 20
      pick_host_name_from_backend_address = true
      probe_name              = "default-health-probe"
    }
  ]
}
