redirect_configurations = [
  {
    name                  = "redirect-360imprimir-mx"
    redirect_type         = "Permanent"
    target_listener_name  = "360imprimir_com_mx-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
  {
    name                  = "redirect-imprimir360-mx"
    redirect_type         = "Permanent"
    target_listener_name  = "360imprimir_com_mx-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
  {
    name                  = "redirect-imprimir360-com-mx"
    redirect_type         = "Permanent"
    target_listener_name  = "360imprimir_com_mx-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
  {
    name                  = "redirect-360imprimir-com-br"
    redirect_type         = "Permanent"
    target_listener_name  = "360imprimir_com_br-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
  {
    name                  = "redirect-360print-com-br"
    redirect_type         = "Permanent"
    target_listener_name  = "360imprimir_com_br-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
  {
    name                  = "redirect-imprimir360-com-br"
    redirect_type         = "Permanent"
    target_listener_name  = "360imprimir_com_br-listener-https-443"
    include_path          = true
    include_query_string  = true
  }
]