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
  ]
}