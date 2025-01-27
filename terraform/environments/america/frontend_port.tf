variable "frontend_port" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
    {
      name = "port-https-443"
      port = 443
    },
    {
      name = "port-https-9090"
      port = 9090
    },
    {
      name = "port-https-9190"
      port = 9190
    },
    {
      name = "port-https-9194"
      port = 9194
    },
    {
      name = "port-http-9194"
      port = 9194
    },
    {
      name = "port-https-9291"
      port = 9291
    },
    {
      name = "port-https-9292"
      port = 9292
    },
    {
      name = "port-https-9491"
      port = 9491
    },
    {
      name = "port-http-9491"
      port = 9491
    },
    {
      name = "port-https-9590"
      port = 9590
    }
  ]
}
