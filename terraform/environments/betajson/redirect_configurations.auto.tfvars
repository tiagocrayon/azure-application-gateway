redirect_configurations = [
  {
    name                  = "redirect-beta-bizay-ca"
    redirect_type         = "Permanent"
    target_listener_name  = "beta_bizay_ca-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
  {
    name                  = "redirect-beta-bizay-com-ro"
    redirect_type         = "Permanent"
    target_listener_name  = "beta_bizay_ro-listener-https-443"
    include_path          = true
    include_query_string  = true
  },
]
