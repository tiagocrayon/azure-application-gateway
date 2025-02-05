probes = [
  {
    name                                      = "http-80-health-probe"
    pick_host_name_from_backend_http_settings = true
    protocol                                  = "Http"
    port                                      = 80
    path                                      = "/health"
    interval                                  = 30
    timeout                                   = 20
    unhealthy_threshold                       = 3
    match = {
      status_code = ["200"]
      body        = ""
    }
  },
  {
    name                                      = "http-81-health-probe"
    pick_host_name_from_backend_http_settings = true
    protocol                                  = "Http"
    port                                      = 81
    path                                      = "/health"
    interval                                  = 30
    timeout                                   = 20
    unhealthy_threshold                       = 3
    match = {
      status_code = ["200"]
      body        = ""
    }
  },
  {
    name                                      = "http-82-health-probe"
    pick_host_name_from_backend_http_settings = true
    protocol                                  = "Http"
    port                                      = 82
    path                                      = "/health"
    interval                                  = 30
    timeout                                   = 20
    unhealthy_threshold                       = 3
    match = {
      status_code = ["200"]
      body        = ""
    }
  },
  {
    name                                      = "healthz-http-9192-health-probe"
    pick_host_name_from_backend_http_settings = true
    protocol                                  = "Http"
    port                                      = 9192
    path                                      = "/healthz"
    interval                                  = 30
    timeout                                   = 20
    unhealthy_threshold                       = 3
    match = {
      status_code = ["200"]
      body        = ""
    }
  },
  {
    name                                      = "swagger-index-http-9290-health-probe"
    pick_host_name_from_backend_http_settings = true
    protocol                                  = "Http"
    port                                      = 9290
    path                                      = "/swagger/index.html"
    interval                                  = 30
    timeout                                   = 20
    unhealthy_threshold                       = 3
    match = {
      status_code = ["200"]
      body        = ""
    }
  }
]