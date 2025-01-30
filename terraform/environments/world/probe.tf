variable "probe" {
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
    {
      name                                      = "http-80-health-probe"
      pick_host_name_from_backend_http_settings = true
      protocol                                  = "Http"
      port                                      = 80
      path                                      = "/health"
      interval                                  = 30
      timeout                                   = 20
      unhealthy_threshold                       = 3
      match = {
        status_code = ["200"]
        body        = ""
      }
    }
  ]
}



