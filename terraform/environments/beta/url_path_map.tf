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
      name                               = "paymentgw-STORE-BETA-VMSS-url-path-map"
      default_backend_address_pool_name  = "BACKEND.DEFAULT"
      default_backend_http_settings_name = "Http-settings-80"
      path_rules = [
        {
            name                       = "paymentgw-all-target"
            paths                      = ["/payment/multipaymentsystemcallback/"]
            backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
            backend_http_settings_name  = "Http-settings-80"
        },
        {
            name                       = "paymentgw-target"
            paths                      = ["/payment/multipaymentsystemcallback/*"]
            backend_address_pool_name   = "BACKEND.STORE-BETA-VMSS"
            backend_http_settings_name  = "Http-settings-80"
        }
      ]
    },
    {
      name                               = "bizayHeaderAllow-YOUTRACK-url-path-map"
      default_backend_address_pool_name  = "BACKEND.DEFAULT"
      default_backend_http_settings_name = "Http-settings-80"
      default_rewrite_rule_set_name      = "rule-rewrite-bizay-access-token"
      path_rules = [
        {
            name                       = "bizayHeaderAllow-referer-header"
            paths                      = ["/*"]
            rewrite_rule_set_name      = "rule-rewrite-bizay-access-token"
            backend_address_pool_name  = "BACKEND.YOUTRACK"
            backend_http_settings_name = "Http-settings-8112"
        },
      ]
    }
  ]
}