variable "backend_pools" {
  type = list(object({
    name        = string
    fqdns       = optional(string)
    ip_addresses = optional(list(string))
  }))
  default = [
  ]
}
