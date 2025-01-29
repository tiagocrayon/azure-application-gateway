variable "url_path_map" {
  type = list(object({
    name                               = string
    default_backend_address_pool_name  = string
    default_backend_http_settings_name = string
    default_rewrite_rule_set_name      = optional(string)
    path_rules = list(object({
      name                          = optional(string)
      paths                         = list(string)
      backend_http_settings_name    = optional(string)
      backend_address_pool_name     = optional(string)
    }))
  }))
  default = [
    {
      name                               = "360imprimir_Administrative_BR-url-path-map"
      default_backend_address_pool_name  = "BACKEND.DEFAULT"
      default_backend_http_settings_name = "Http-settings-82"
      default_rewrite_rule_set_name     = "rule-rewrite-1"
      path_rules = [
        {
            name                       = "Administrative-all-target"
            paths                      = ["/Administrative/*"]
            backend_http_settings_name = "Http-settings-82"
            backend_address_pool_name  = "BACKEND.PRD-BR-CT"
        },
        {
            name                       = "Administrative-target"
            paths                      = ["/Administrative"]
            backend_http_settings_name = "Http-settings-82"
            backend_address_pool_name  = "BACKEND.PRD-BR-CT"
        },
        {
            name                       = "Designer-all-target"
            paths                      = ["/Designer/*"]
            backend_http_settings_name = "Http-settings-82"
            backend_address_pool_name  = "BACKEND.PRD-BR-CT"
        },
        {
            name                       = "Designer-target"
            paths                      = ["/Designer"]
            backend_http_settings_name = "Http-settings-82"
            backend_address_pool_name  = "BACKEND.PRD-BR-CT"
        },
      ]
    }
  ]
}