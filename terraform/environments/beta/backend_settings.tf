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
      name                    = "Http-settings-80",
      cookie_based_affinity   = "Disabled",
      port                    = 80,
      protocol                = "Http",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "http-80-health-probe"
    },
    {
      name                    = "Https-settings-8112",
      cookie_based_affinity   = "Disabled",
      port                    = 8112,
      protocol                = "Https",
      request_timeout         = 20,
    },
    {
      name                    = "Https-settings-9090",
      cookie_based_affinity   = "Disabled",
      port                    = 9090,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "http-9090-health-probe"
    },
    {
      name                    = "Https-settings-9190",
      cookie_based_affinity   = "Disabled",
      port                    = 9190,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9190-health-probe"
    },
    {
      name                    = "Https-settings-9192",
      cookie_based_affinity   = "Disabled",
      port                    = 9192,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9192-health-probe"
    },
    {
      name                    = "Https-settings-9193",
      cookie_based_affinity   = "Disabled",
      port                    = 9193,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9193-health-probe"
    },
    {
      name                    = "Https-settings-9194",
      cookie_based_affinity   = "Disabled",
      port                    = 9194,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9194-health-probe"
    },
    {
      name                    = "Https-settings-9290",
      cookie_based_affinity   = "Disabled",
      port                    = 9290,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9290-health-probe"
    },
    {
      name                    = "Https-settings-9291",
      cookie_based_affinity   = "Disabled",
      port                    = 9291,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9291-health-probe"
    },
    {
      name                    = "Https-settings-9292",
      cookie_based_affinity   = "Disabled",
      port                    = 9292,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9292-health-probe"
    },
    {
      name                    = "Https-settings-9490",
      cookie_based_affinity   = "Disabled",
      port                    = 9490,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9490-health-probe"
    },
    {
      name                    = "Https-settings-9590",
      cookie_based_affinity   = "Disabled",
      port                    = 9590,
      protocol                = "Https",
      request_timeout         = 20,
      pick_host_name_from_backend_address = true,
      probe_name              = "swagger-index-http-9590-health-probe"
    }
  ]
}
