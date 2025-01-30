variable "redirect_configuration" {
  type = list(object({
    name                  = string
    redirect_type         = string
    target_listener_name  = string
    include_path          = bool
    include_query_string  = bool
  }))
  default = [
    
  ]
}

