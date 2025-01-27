variable "url_path_map" {
  type = list(object({
    name                               = string
    default_backend_address_pool_name  = string
    default_backend_http_settings_name = string
    default_rewrite_rule_set_name      = optional(string)
    path_rules = list(object({
      name                          = string
      paths                         = list(string)
      backend_http_settings_name    = string
      backend_address_pool_name     = string
    }))
  }))
  default = [
    {
        name                              = "YOUTRACK-url-path-map"
        default_backend_address_pool_name = "BACKEND.YOUTRACK"
        default_backend_http_settings_name = "Http-settings-8112"
        default_rewrite_rule_set_name     = "rule-rewrite-1"
        path_rules = [
            {
                name                       = "default-path-rule-1"
                paths                      = ["/default"]
                backend_http_settings_name = "Http-settings-default"
                backend_address_pool_name  = "BACKEND.DEFAULT"
            }
        ]
    }
  ]
}