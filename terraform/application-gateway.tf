
resource "azurerm_application_gateway" "network" {
  name                = "360imprimir-beta-agw"
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location            = data.azurerm_resource_group.resource_group.location

  tags = {
    project       = ""
    department    = ""
    costCenter    = ""
    bussinessUnit = ""
    environment   = "${terraform.workspace}" 
    owner         = ""
    application   = ""
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

  identity {
    type = "UserAssigned"
    identity_ids = [
        data.azurerm_user_assigned_identity.user_assigned.id
    ]
  }

  #frontend_port
  dynamic "frontend_port" {
    for_each = local.frontend_ports
    content {
      name = "port-${frontend_port.value}"
      port = frontend_port.value
    }
  }

  frontend_ip_configuration {
    name         = "public-frontend-ip"
    public_ip_address_id = data.azurerm_public_ip.public_ip.id
  }

  #Backends
  dynamic "backend_address_pool" {
    for_each = local.backend_pools
    content {
      name = backend_address_pool.value.name
      fqdns = try(backend_address_pool.value.fqdns, null)
      ip_addresses = try(backend_address_pool.value.ip_addresses, null)
    }
  }

  #Backends Settings
  dynamic "backend_http_settings" {
    for_each = local.backend_settings
    content {
      name                  = backend_http_settings.value.name
      cookie_based_affinity = backend_http_settings.value.cookie_based_affinity
      port                  = backend_http_settings.value.port
      protocol              = backend_http_settings.value.protocol
      request_timeout       = backend_http_settings.value.request_timeout
      pick_host_name_from_backend_address = try(backend_http_settings.value.pick_host_name_from_backend_address,null)
      probe_name            = try(backend_http_settings.value.probe_name, null)
    }
  }

  #Listeners (referenced in request_routing_rule)
  dynamic "http_listener" {
    for_each = local.listeners
    content {
      name                           = http_listener.value.name
      frontend_ip_configuration_name = http_listener.value.frontend_ip_configuration_name
      frontend_port_name             = http_listener.value.frontend_port_name
      protocol                       = http_listener.value.protocol
      host_names                     = try(http_listener.value.host_names, null)
      ssl_certificate_name           = try(http_listener.value.ssl_certificate_name, null)
      ssl_profile_id                 = try(http_listener.value.ssl_profile_id, null)

      #TODO: não faz sentido, senão houver paginas erro especificas. Redundante com a configuração glocal
      # dynamic "custom_error_configuration" {
      #   for_each = local.error_configurations
      #   content {
      #     status_code                   = custom_error_configuration.value.status_code
      #     custom_error_page_url         = custom_error_configuration.value.custom_error_page_url
      #   }
      # }
    }
  }

  # # curl -X GET -H "Host: api.youtrack.360imprimir.com" -H "bizay-access-token: PBJHf4FhpJgaEAm8" https://20.8.48.39:443 --insecure -i
  #   curl -X GET -H "Host: api.youtrack.360imprimir.com" https://20.8.48.39:443 --insecure -i
  # Health probe (reference in backend_http_settings )
  dynamic "probe" {
    for_each = local.probes
    content {
      name                = probe.value.name
      pick_host_name_from_backend_http_settings = try(probe.value.pick_host_name_from_backend_http_settings, false)
      protocol            = probe.value.protocol
      port                = probe.value.port
      path                = probe.value.path
      interval            = probe.value.interval
      timeout             = probe.value.timeout
      unhealthy_threshold = probe.value.unhealthy_threshold
      match {
        status_code = probe.value.match.status_code
        body        = probe.value.match.body
      }
    }
  }

  #Redirect Configuration (referenced in request_routing_rule)
  dynamic "redirect_configuration" {
    for_each = local.redirect_configurations
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
    for_each = local.routing_rules
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
  
  #Rewrite Rule Set (referenced in request_routing_rule)
  dynamic "rewrite_rule_set" {
    for_each = local.rewrite_rule_sets
    content {
      name = rewrite_rule_set.value.name

      # Using dynamic block to define rewrite_rule inside rewrite_rule_set
      dynamic "rewrite_rule" {
        for_each = rewrite_rule_set.value.rewrite_rule
        content {
          name          = rewrite_rule.value.name
          rule_sequence = rewrite_rule.value.rule_sequence

          condition {
            variable    = rewrite_rule.value.condition.variable
            pattern     = rewrite_rule.value.condition.pattern
            ignore_case = rewrite_rule.value.condition.ignore_case
            negate      = rewrite_rule.value.condition.negate
          }

          url {
            path       = rewrite_rule.value.url.path
            components = rewrite_rule.value.url.components
            reroute    = rewrite_rule.value.url.reroute
          }
        }
      }
    }
  }

  #Url path map (referenced in request_routing_rule)
  dynamic "url_path_map" {
    for_each = local.url_path_maps
    content {
      name                               = url_path_map.value.name
      default_backend_address_pool_name  = try(url_path_map.value.default_backend_address_pool_name, null)
      default_backend_http_settings_name = try(url_path_map.value.default_backend_http_settings_name, null)
      default_rewrite_rule_set_name      = try(url_path_map.value.default_rewrite_rule_set_name, null)

      dynamic "path_rule" {
        for_each = lookup(url_path_map.value, "path_rules", [])
        content {
          name                          = path_rule.value.name
          paths                         = path_rule.value.paths
          backend_http_settings_name    = path_rule.value.backend_http_settings_name
          backend_address_pool_name     = path_rule.value.backend_address_pool_name
        }
      }
    }
  }


  #GLOBAL  #custom_error_configuration
  dynamic "custom_error_configuration" {
    for_each = local.error_configurations
    content {
      status_code                   = custom_error_configuration.value.status_code
      custom_error_page_url         = custom_error_configuration.value.custom_error_page_url
    }
  }


  #SSL Certificate (referenced in http_listener)
  dynamic "ssl_certificate" {
    for_each = local.ssl_certificates
    content {
      name                   = ssl_certificate.value.name
      key_vault_secret_id    = ssl_certificate.value.key_vault_secret_id
    }
  }
  
}