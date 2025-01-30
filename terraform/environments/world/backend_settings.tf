variable "backend_settings" {
  type = list(object({
    name                    = string
    cookie_based_affinity   = string
    port                    = number
    protocol                = string
    request_timeout         = number
    pick_host_name_from_backend_address = optional(string)
    probe_name              = optional(string)
  }))
  default = [
    {
      name                           = "Http-settings-80"
      cookie_based_affinity          = "Disabled"
      port                           = 80
      protocol                       = "Http"
      request_timeout                = 20
      pick_host_name_from_backend_address = true
      probe_name                     = "http-80-health-probe"
    },
    {
      name                           = "Http-settings-81"
      cookie_based_affinity          = "Disabled"
      port                           = 81
      protocol                       = "Http"
      request_timeout                = 20
      pick_host_name_from_backend_address = true
      probe_name                     = "http-81-health-probe"
    },
    {
      name                           = "Http-settings-82"
      cookie_based_affinity          = "Disabled"
      port                           = 82
      protocol                       = "Http"
      request_timeout                = 20
      pick_host_name_from_backend_address = true
      probe_name                     = "http-82-health-probe"
    },
    {
      name                           = "Http-settings-8181"
      cookie_based_affinity          = "Disabled"
      port                           = 8181
      protocol                       = "Http"
      request_timeout                = 20
    },
    {
      name                           = "Http-settings-9192"
      cookie_based_affinity          = "Disabled"
      port                           = 9192
      protocol                       = "Http"
      request_timeout                = 20
      pick_host_name_from_backend_address = true
      probe_name                     = "healthz-http-9192-health-probe"
    },
    {
      name                           = "Http-settings-9290"
      cookie_based_affinity          = "Disabled"
      port                           = 9290
      protocol                       = "Http"
      request_timeout                = 20
      pick_host_name_from_backend_address = true
      probe_name                     = "swagger-index-http-9290-health-probe"
    }
  ]
}
