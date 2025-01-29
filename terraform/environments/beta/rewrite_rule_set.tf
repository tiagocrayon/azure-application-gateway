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
    }))
  }))
  default = [
    {
      name = "rule-rewrite"
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
    }
  ]
}

