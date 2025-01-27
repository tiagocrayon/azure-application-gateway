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
      name = "port-82"
      port = 82
    },
    {
      name = "port-443"
      port = 443
    },
    {
      name = "port-9090"
      port = 9090
    },
    {
      name = "port-9190"
      port = 9190
    },
    {
      name = "port-9193"
      port = 9193
    },
    {
      name = "port-9194"
      port = 9194
    },
    {
      name = "port-9291"
      port = 9291
    },
    {
      name = "port-9292"
      port = 9292
    },
    {
      name = "port-9491"
      port = 9491
    },
    {
      name = "port-9590"
      port = 9590
    }
  ]
}
