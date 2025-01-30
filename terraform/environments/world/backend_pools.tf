variable "backend_pools" {
  type = list(object({
    name        = string
    fqdns       = optional(string)
    ip_addresses = optional(list(string))
  }))
  default = [
    {
      name         = "BACKEND.PRD-EU-BO"
      ip_addresses = ["10.10.10.14"]
      fqdns        = null
    },
    {
      name         = "BACKEND.BE-IP-PT1-BE-IP-PT2"
      ip_addresses = ["10.10.1.21", "10.10.1.22"]
      fqdns        = null
    },
    {
      name         = "BACKEND.BE-IP-PT1-BE-IP-PT2-BE-IP-PT3"
      ip_addresses = ["10.10.1.21", "10.10.1.22", "10.10.1.23"]
      fqdns        = null
    },
    {
      name         = "BACKEND.EUROPE-DOCKER01-EUROPE-DOCKER02"
      ip_addresses = ["10.10.0.31", "10.10.0.32"]
      fqdns        = null
    },
    {
      name         = "BACKEND.PRD-EU-CT"
      ip_addresses = ["10.10.10.14"]
      fqdns        = null
    },
    {
      name         = "BACKEND.stats-localhost"
      ip_addresses = ["10.10.0.211"]
      fqdns        = null
    },
    {
      name         = "BACKEND.stats-localhost-2"
      ip_addresses = ["10.10.0.212"]
      fqdns        = null
    },
    {
      name         = "BACKEND.PRD-EU-BOTS"
      ip_addresses = ["10.10.10.14"]
      fqdns        = null
    }
  ]
}
