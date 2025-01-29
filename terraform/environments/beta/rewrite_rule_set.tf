variable "rewrite_rule_set" {
  type = list(object({
    name         = string
    rewrite_rule = list(object({
      name          = string
      rule_sequence = number
      condition = object({
        variable    = string
        pattern     = string
        ignore_case = bool
        negate      = bool
      })
      url = optional(object({
        path       = optional(string)
        components = optional(string)
        reroute    = optional(bool)
      }))
      # request_header_configuration = optional(object({
      #   header_name    = string
      #   header_value   = string
      # }))
    }))
  }))
  default = [
    {
      name = "rule-rewrite-1"
      rewrite_rule = [
        {
          name          = "NewRewrite1"
          rule_sequence = 100
          condition = {
            variable    = "http_req_header_x-admin-request"
            pattern     = "true"
            ignore_case = true
            negate      = true
          }
          url = {
            path       = "/default"
            components = "path_only"
            reroute    = true
          }
        }
      ]
    },
    {
      name = "rule-rewrite-2"
      rewrite_rule = [
        {
          name          = "NewRewrite2"
          rule_sequence = 200
          condition = {
            variable    = "http_req_header_referer"
            pattern     = "www\\.360imprimir\\.com\\.br/(Administrative|Areas/Administrative)"
            ignore_case = true
            negate      = true
          }
          request_header_configuration = {
            header_name  = "X-Admin-Request"
            header_value = "true"
          }
        }
      ]
    }
  ]
}

