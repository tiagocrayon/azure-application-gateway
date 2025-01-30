variable "frontend_port" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
    {
      name = "port-80"
      port = 80
    },
    {
      name = "port-443"
      port = 443
    },
    {
      name = "port-81"
      port = 81
    },
    {
      name = "port-82"
      port = 82
    },
    {
      name = "port-9290"
      port = 9290
    }
  ]
}
