variable "backend_pools" {
  type = list(object({
    name        = string
    fqdns       = optional(string)
    ip_addresses = optional(list(string))
  }))
  default = [
    {
      name         = "BACKEND.studio360client_mx"
      ip_addresses = ["10.0.0.31", "10.0.0.32"]
      fqdns        = null
    },
    {
      name         = "BACKEND.studio360coreapi"
      ip_addresses = ["10.0.0.51", "10.0.0.52"]
      fqdns        = null
    },
    {
      name         = "BACKEND.studio360eventsourcing"
      ip_addresses = ["10.0.0.51", "10.0.0.52"]
      fqdns        = null
    },
    {
      name         = "BACKEND.studio360templateapi"
      ip_addresses = ["10.0.0.51", "10.0.0.52"]
      fqdns        = null
    },
    {
      name         = "BACKEND.studio360templategenerator"
      ip_addresses = ["10.0.0.51", "10.0.0.52"]
      fqdns        = null
    },
    {
      name         = "BACKEND.userimagesservice_br"
      ip_addresses = ["10.0.0.31", "10.0.0.32"]
      fqdns        = null
    },
    {
      name         = "BACKEND.userimagesservice_mx"
      ip_addresses = ["10.0.0.31", "10.0.0.32"]
      fqdns        = null
    }
  ]
}
