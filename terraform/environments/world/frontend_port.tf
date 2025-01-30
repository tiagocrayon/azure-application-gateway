variable "frontend_port" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
    {
      name = "port-80"
      port = 80
    }
  ]
}
