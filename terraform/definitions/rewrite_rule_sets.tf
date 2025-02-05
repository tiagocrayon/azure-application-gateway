variable "rewrite_rule_sets" {
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
  ]
}

