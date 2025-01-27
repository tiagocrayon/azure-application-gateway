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
  ]
}