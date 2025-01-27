variable "backend_settings" {
  type = list(object({
    name                    = string
    cookie_based_affinity   = string
    port                    = number
    protocol                = string
    request_timeout         = number
  }))
  default = [
    {
      name                    = "Http-settings-9090"
      cookie_based_affinity   = "Disabled"
      port                    = 9090
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-9190"
      cookie_based_affinity   = "Disabled"
      port                    = 9190
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-9194"
      cookie_based_affinity   = "Disabled"
      port                    = 9194
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-9291"
      cookie_based_affinity   = "Disabled"
      port                    = 9291
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-9292"
      cookie_based_affinity   = "Disabled"
      port                    = 9292
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-9491"
      cookie_based_affinity   = "Disabled"
      port                    = 9491
      protocol                = "Http"
      request_timeout         = 20
    },
    {
      name                    = "Http-settings-9590"
      cookie_based_affinity   = "Disabled"
      port                    = 9590
      protocol                = "Http"
      request_timeout         = 20
    }
  ]
}
