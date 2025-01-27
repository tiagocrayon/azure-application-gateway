
# resource "azurerm_public_ip" "public_ip" {
#   name                = "beta-agw-public-ip"
#   resource_group_name = data.azurerm_resource_group.resource_group.name
#   location            = data.azurerm_resource_group.resource_group.location
#   allocation_method   = "Static"
#   sku                 = "Standard" 
#   zones               = ["1", "2", "3"]

#   tags = {
#     environment = "beta"
#     owner = ""
#     createdAt = ""
#     costCenter = ""
#     application = ""
#   }
#   # lifecycle {
#   #   prevent_destroy = true
#   # }
# }


resource "azurerm_application_gateway" "network" {
  name                = "360imprimir-beta-agw"
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location            = data.azurerm_resource_group.resource_group.location

  tags = {
    environment = "beta"
    owner = ""
    createdAt = ""
    costCenter = ""
  }

  sku {
    name     = "Standard_v2" # "Basic"
    tier     = "Standard_v2" # "Basic"
    capacity = 1
  }

  # autoscale_configuration  {
  #   min_capacity = 1
  #   max_capacity = 2
  # }

  # zones  = ["1", "2", "3"]

  enable_http2 = true

  gateway_ip_configuration {
    name      = data.azurerm_subnet.subnet.name
    subnet_id = data.azurerm_subnet.subnet.id
  }


  #frontend_port
  dynamic "frontend_port" {
    for_each = module.environment.frontend_port  # Use the passed frontend_port variable
    content {
      name = frontend_port.value.name
      port = frontend_port.value.port
    }
  }

  frontend_ip_configuration {
    name         = "public-frontend-ip"
    public_ip_address_id = data.azurerm_public_ip.public_ip.id
  }

  #Backends
  dynamic "backend_address_pool" {
    for_each = module.environment.backend_pools
    content {
      name = backend_address_pool.value.name
      fqdns = backend_address_pool.value.fqdns != null ? [backend_address_pool.value.fqdns] : null
      ip_addresses = backend_address_pool.value.ip_addresses != null ? backend_address_pool.value.ip_addresses : null
    }
  }

  #Backends Settings
  dynamic "backend_http_settings" {
    for_each = module.environment.backend_settings
    content {
      name                  = backend_http_settings.value.name
      cookie_based_affinity = backend_http_settings.value.cookie_based_affinity
      port                  = backend_http_settings.value.port
      protocol              = backend_http_settings.value.protocol
      request_timeout       = backend_http_settings.value.request_timeout
    }
  }

  #Listeners (referenced in request_routing_rule)
  dynamic "http_listener" {
    for_each = module.environment.listener
    content {
      name                           = http_listener.value.name
      frontend_ip_configuration_name = http_listener.value.frontend_ip_configuration_name
      frontend_port_name             = http_listener.value.frontend_port_name
      protocol                       = http_listener.value.protocol
      host_names                      = http_listener.value.host_names
      ssl_certificate_name           = try(http_listener.value.ssl_certificate_name, null)
      ssl_profile_id                 = try(http_listener.value.ssl_profile_id, null)

      dynamic "custom_error_configuration" {
        for_each = module.environment.error_configuration
        content {
          status_code                   = custom_error_configuration.value.status_code
          custom_error_page_url         = custom_error_configuration.value.custom_error_page_url
        }
      }
    }
  }

  # # curl -X GET -H "Host: api.youtrack.360imprimir.com" -H "bizay-access-token: PBJHf4FhpJgaEAm8" https://20.8.48.39:443 --insecure -i
  # # Health probe (reference in backend_http_settings )
  # dynamic "probe" {
  #   for_each = module.environment.probe
  #   content {
  #     name                = probe.value.name
  #     host                = probe.value.host
  #     protocol            = probe.value.protocol
  #     port                = probe.value.port
  #     path                = probe.value.path
  #     interval            = probe.value.interval
  #     timeout             = probe.value.timeout
  #     unhealthy_threshold = probe.value.unhealthy_threshold
  #     match {
  #       status_code = probe.value.match.status_code
  #       body        = probe.value.match.body
  #     }
  #   }
  # }

  #Redirect Configuration (referenced in request_routing_rule)
  dynamic "redirect_configuration" {
    for_each = module.environment.redirect_configuration
    content {
      name                   = redirect_configuration.value.name
      redirect_type          = redirect_configuration.value.redirect_type
      target_listener_name   = redirect_configuration.value.target_listener_name
      include_query_string   = redirect_configuration.value.include_query_string
      include_path           = redirect_configuration.value.include_path
    }
  }

  #Request Routing RUle
  dynamic "request_routing_rule" {
    for_each = module.environment.routing_rule
    content {
      name                        = request_routing_rule.value.name
      priority                    = request_routing_rule.value.priority
      rule_type                   = request_routing_rule.value.rule_type
      http_listener_name          = request_routing_rule.value.http_listener_name
      backend_address_pool_name   = lookup(request_routing_rule.value, "backend_address_pool_name", null)
      backend_http_settings_name  = lookup(request_routing_rule.value, "backend_http_settings_name", null)
      url_path_map_name           = lookup(request_routing_rule.value, "url_path_map_name", null)
      redirect_configuration_name = lookup(request_routing_rule.value, "redirect_configuration_name", null)
    }
  }
  
  # #Rewrite Rule Set (referenced in request_routing_rule)
  # rewrite_rule_set {
  #   name = "rule-rewrite-1"

  #   rewrite_rule {
  #     name          = "NewRewrite"
  #     rule_sequence = 100

  #     condition {
  #       variable    = "http_req_bizay-access-token" #"http_req_Header_bizay-access-token"
  #       pattern     = "PBJHf4FhpJgaEAm8"
  #       ignore_case = true
  #       negate      = true
  #     }

  #     url {
  #       path ="/default"
  #       components = "path_only"
  #       reroute = true
  #     }
  #   }
  # }

  # #Url path map (referenced in request_routing_rule)
  # dynamic "url_path_map" {
  #   for_each = module.environment.url_path_map
  #   content {
  #     name                               = url_path_map.value.name
  #     default_backend_address_pool_name  = url_path_map.value.default_backend_address_pool_name
  #     default_backend_http_settings_name = url_path_map.value.default_backend_http_settings_name
  #     default_rewrite_rule_set_name      = lookup(url_path_map.value, "default_rewrite_rule_set_name", null)

  #     dynamic "path_rule" {
  #       for_each = lookup(url_path_map.value, "path_rules", [])
  #       content {
  #         name                          = path_rule.value.name
  #         paths                         = path_rule.value.paths
  #         backend_http_settings_name    = path_rule.value.backend_http_settings_name
  #         backend_address_pool_name     = path_rule.value.backend_address_pool_name
  #       }
  #     }
  #   }
  # }


  # #GLOBAL  #custom_error_configuration
  # dynamic "custom_error_configuration" {
  #   for_each = module.environment.error_configuration
  #   content {
  #     status_code                   = custom_error_configuration.value.status_code
  #     custom_error_page_url         = custom_error_configuration.value.custom_error_page_url
  #   }
  # }

  #SSL Certificate (referenced in http_listener)
  ssl_certificate {
    name   = "certificado-1"
    data   = filebase64("C:/Users/tiaisabe/OneDrive - Crayon Group/Documentos/Projetos/Bizay/Cert/example_com.pfx")
    password = "admin123"  # Set the password for your PFX certificate
    # key_vault_secret_id = ""  # data.azurerm_key_vault.certificate.id
  }
}