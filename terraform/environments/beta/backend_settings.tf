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
      name: "Http-settings-80",
      cookie_based_affinity: "Disabled",
      port: 80,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-8112",
      cookie_based_affinity: "Disabled",
      port: 8112,
      protocol: "Http",
      request_timeout: 20
    }
    {
      name: "Http-settings-9090",
      cookie_based_affinity: "Disabled",
      port: 9090,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9190",
      cookie_based_affinity: "Disabled",
      port: 9190,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9290",
      cookie_based_affinity: "Disabled",
      port: 9290,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9291",
      cookie_based_affinity: "Disabled",
      port: 9291,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9292",
      cookie_based_affinity: "Disabled",
      port: 9292,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9490",
      cookie_based_affinity: "Disabled",
      port: 9490,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9192",
      cookie_based_affinity: "Disabled",
      port: 9192,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9193",
      cookie_based_affinity: "Disabled",
      port: 9193,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9194",
      cookie_based_affinity: "Disabled",
      port: 9194,
      protocol: "Http",
      request_timeout: 20
    },
    {
      name: "Http-settings-9590",
      cookie_based_affinity: "Disabled",
      port: 9590,
      protocol: "Http",
      request_timeout: 20
    }
  ]
}
