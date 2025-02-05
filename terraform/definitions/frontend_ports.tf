variable "frontend_ports" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
  ]
}
