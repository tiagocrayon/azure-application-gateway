
resource "azurerm_public_ip" "public_ip" {
  name                = "beta-agw-public-ip"
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location            = data.azurerm_resource_group.resource_group.location
  allocation_method   = "Static"
  sku                 = "Standard" 
  zones               = ["1", "2", "3"]

  tags = {
    environment = "Production"
  }
}

# LOCAL BLOCK: Use to re-used variables
locals {
  frontend_port_name             = "${data.azurerm_virtual_network.vnet.name}-feport"
  frontend_ip_configuration_name = "${data.azurerm_virtual_network.vnet.name}-feip"
}

resource "azurerm_application_gateway" "network" {
  name                = "360imprimir-beta-agw"
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location            = data.azurerm_resource_group.resource_group.location

#   tags {

#   }

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
  }

  autoscale_configuration  {
    min_capacity = 1
    max_capacity = 2
  }

  zones  = ["1", "2", "3"]

  enable_http2 = true


  gateway_ip_configuration {
    name      = data.azurerm_subnet.subnet.name
    subnet_id = data.azurerm_subnet.subnet.id
  }

  #Frontends
  frontend_port {
    name = local.frontend_port_name
    port = 80
  }

  frontend_ip_configuration {
    name                 = "public-frontend-ip"
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }

  frontend_ip_configuration {
    name                   = "private-frontend-ip"
    private_ip_address     = "10.0.0.4"
    private_ip_address_allocation = "Static"
    subnet_id              = data.azurerm_subnet.subnet.id
  }


  #Backends
  dynamic "backend_address_pool" {
    for_each = var.backend_pools
    content {
      name  = backend_address_pool.value.name
      fqdns = [backend_address_pool.value.fqdn]
    }
  }

  # backend_address_pool {
  #   name = "BACKEND.studio360coreapi"
  #   fqdns = ["storagestaticbackend.z6.web.core.windows.net"]
  #   # ip_addresses = ["10.7.10.31", "10.7.10.32"]
  # }

  backend_http_settings {
    name                  = "BACKEND.studio360coreapi-settings"
    protocol              = "Https" # Use HTTPS for backend communication
    port                  = 443     # HTTPS port
    cookie_based_affinity = "Disabled"
    connection_draining {
        enabled = false
        drain_timeout_sec = 1
    }
    request_timeout       = 20
    path                  = "/" # Path to the static website
    probe_name            = "static-website-health-probe" # Use HTTPS probe
    host_name             = "storagestaticbackend.z6.web.core.windows.net"
#    pick_host_name_from_backend_address = true

  }


  # Defining the health probe directly in backend_http_settings
  probe {
    name                    = "static-website-health-probe"
    host                    = "storagestaticbackend.z6.web.core.windows.net"
    protocol                = "Https"
    port                    = 443
    path                    = "/"
    interval                = 30
    timeout                 = 20
    unhealthy_threshold     = 3
    match {
        status_code = ["200"]
        body = ""
    }
  }

#   ssl_certificate {

#   }

#   rewrite_rule_set {

#   }

  http_listener {
    name                           = "BACKEND.studio360coreapi-listener"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http" # Listener uses HTTP
  }


  request_routing_rule {
    name                       = "BACKEND.studio360coreapi-route-rule"
    priority                   = 1
    rule_type                  = "Basic"
    http_listener_name         = "BACKEND.studio360coreapi-listener"
    backend_address_pool_name  = "BACKEND.studio360coreapi"
    backend_http_settings_name = "BACKEND.studio360coreapi-settings"
  }
}