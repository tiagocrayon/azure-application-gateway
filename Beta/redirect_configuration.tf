variable "redirect_configuration" {
  type = list(object({
    name                  = string
    redirect_type         = string
    target_listener_name  = string
    include_path          = bool
    include_query_string  = bool
  }))
  default = [
    {
      name                  = "YOUTRACK-to-https-redirect"
      redirect_type         = "Permanent"
      target_listener_name  = "YOUTRACK-listener-https"
      include_path          = true
      include_query_string  = true
    }
  ]
}

