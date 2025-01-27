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
      name                  = "studioclient-to-http-9194-redirect"
      redirect_type         = "Permanent"
      target_listener_name  = "studioclient-listener-http-9194"
      include_path          = true
      include_query_string  = true
    },
    {
      name                  = "studiotemplategenerator-to-http-9491-redirect"
      redirect_type         = "Permanent"
      target_listener_name  = "studiotemplategenerator-listener-http-9194"
      include_path          = true
      include_query_string  = true
    },
  ]
}

