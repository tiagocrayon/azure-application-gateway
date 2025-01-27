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
  default = [
    {
      name                = "youtrack-health-probe"
      host                = "40.68.203.166"
      protocol            = "Http"
      port                = 8112
      path                = "/"
      interval            = 30
      timeout             = 20
      unhealthy_threshold = 3
      match = {
        status_code = ["200"]
        body        = ""
      }
    },
    {
      name                = "default-health-probe"
      host                = "20.160.204.211"
      protocol            = "Http"
      port                = 8113
      path                = "/"
      interval            = 30
      timeout             = 40
      unhealthy_threshold = 3
      match = {
        status_code = ["200"]
        body        = ""
      }
    }
  ]
}
