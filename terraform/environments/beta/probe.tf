variable "probe" {
  type = list(object({
    name                = string
    host                = optional(string)
    pick_host_name_from_backend_http_settings = optional(string)
    protocol            = string
    port                = number
    path                = string
    interval            = number
    timeout             = number
    unhealthy_threshold = number
    match = object({
      status_code = list(string)
      body        = string
    })
  }))
  default = [
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
    }
    {
      name: "http-9090-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9090,
      path: "/healthz",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9091-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9091,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9190-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9190,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9191-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9191,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9192-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9192,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9193-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9193,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9194-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9194,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9195-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9195,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9196-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9196,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9197-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9197,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9290-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9290,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9291-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9291,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9292-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9292,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9293-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9293,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9294-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9294,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9295-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9295,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9490-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9490,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9491-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9491,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9590-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9590,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    },
    {
      name: "swagger-index-http-9591-health-probe",
      pick_host_name_from_backend_http_settings: true,
      protocol: "Http",
      port: 9591,
      path: "/swagger/index.html",
      interval: 30,
      timeout: 20,
      unhealthy_threshold: 3,
      match: {
        status_code: ["200"],
        body: ""
      }
    }
  ]
}



