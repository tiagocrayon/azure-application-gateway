variable "routing_rule" {
  type = list(object({
    name                        = string
    priority                    = string
    http_listener_name          = string
    rule_type                   = string
    backend_address_pool_name   = optional(string)
    backend_http_settings_name  = optional(string)
    url_path_map_name           = optional(string)
    redirect_configuration_name = optional(string)
  }))
  default = [
    {
      name                        = "studiocoreapi_beta_com-route-rule-https-9090"
      priority                    = 8
      http_listener_name          = "studiocoreapi_beta_com-listener-https-9090"
      rule_type                   = "Basic"
      backend_address_pool_name   = "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2"
      backend_http_settings_name  = "Http-settings-9090"
    }
  ]
}