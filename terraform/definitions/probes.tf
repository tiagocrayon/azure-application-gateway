variable "probes" {
  type = list(object({
    name                = string
    host                = optional(string)
    pick_host_name_from_backend_http_settings = optional(string)
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
  default = [
  ]
}



