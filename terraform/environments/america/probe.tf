variable "probe" {
  type = list(object({
    name                = string
    host                = string
    protocol            = string
    port                = number
    path                = string
    interval            = number
    timeout             = number
    unhealthy_threshold = number
    match = object({
      status_code = list(string)
      body        = string
    })
  }))
  default = []
}
