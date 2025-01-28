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
      url = object({
        path       = string
        components = string
        reroute    = bool
      })
    }))
  }))
  default = [
    {
      name = "rule-rewrite-1"
      rewrite_rule = [
        {
          name          = "NewRewrite"
          rule_sequence = 100
          condition = {
            variable    = "http_req_bizay-access-token"
            pattern     = "PBJHf4FhpJgaEAm8"
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