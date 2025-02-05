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
    name =  "http-9090-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9090,
    path =  "/healthz",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9190-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9190,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9192-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9192,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9193-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9193,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9194-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9194,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9290-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9290,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9291-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9291,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9292-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9292,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9490-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9490,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  },
  {
    name =  "swagger-index-http-9590-health-probe",
    pick_host_name_from_backend_http_settings =  true,
    protocol =  "Http",
    port =  9590,
    path =  "/swagger/index.html",
    interval =  30,
    timeout =  20,
    unhealthy_threshold =  3,
    match =  {
      status_code =  ["200"],
      body =  ""
    }
  }
]