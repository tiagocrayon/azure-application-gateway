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
        default_backend_address_pool_name = "BACKEND.DEFAULT"
        default_backend_http_settings_name = "Http-settings-default"
        path_rules = [
            {
                name                       = "api-youtrack-all"
                paths                      = ["/api/*"]
                backend_http_settings_name = "Http-settings-8112"
                backend_address_pool_name  = "BACKEND.YOUTRACK"
            },
            {
                name                       = "api-youtrack"
                paths                      = ["/api"]
                backend_http_settings_name = "Http-settings-8112"
                backend_address_pool_name  = "BACKEND.YOUTRACK"
            },
            {
                name                       = "api2-youtrack-all"
                paths                      = ["/api2/*"]
                backend_http_settings_name = "Http-settings-8112"
                backend_address_pool_name  = "BACKEND.YOUTRACK"
            },
            {
                name                       = "api2-youtrack"
                paths                      = ["/api2"]
                backend_http_settings_name = "Http-settings-8112"
                backend_address_pool_name  = "BACKEND.YOUTRACK"
            },
            {
                name                       = "admin-referer-header"
                paths                      = ["/*"]
                rewrite_rule_set_name      = "rule-rewrite-1"
                backend_http_settings_name = "Http-settings-8112"
                backend_address_pool_name  = "BACKEND.YOUTRACK"
            },
        ]
    }
  ]
}