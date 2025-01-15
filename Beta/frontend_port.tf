variable "frontend_port" {
  type = list(object({
    name        = string
    port        = number
  }))
  default = [
    {
      name         = "port-https"
      port = 443
    },
    {
      name         = "port-http"
      port = 80
    }
  ]
}