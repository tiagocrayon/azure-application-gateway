variable "frontend_port" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
  ]
}
