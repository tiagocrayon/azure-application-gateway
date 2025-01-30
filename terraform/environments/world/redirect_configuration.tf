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
      name                  = "redirect-360imprimir-pt"
      redirect_type         = "Permanent"
      target_listener_name  = "360imprimir_pt-listener-https-443"
      include_path          = true
      include_query_string  = true
    },
    {
      name                  = "redirect-360print-pt"
      redirect_type         = "Permanent"
      target_listener_name  = "360print_pt-listener-https-443"
      include_path          = true
      include_query_string  = true
    },
  ]
}