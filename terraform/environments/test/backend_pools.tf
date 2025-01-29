variable "backend_pools" {
  type = list(object({
    name        = string
    fqdns       = optional(string)
    ip_addresses = optional(list(string))
  }))
  default = [
    {
      name         = "BACKEND.YOUTRACK"
      ip_addresses = ["40.68.203.166"]
      fqdns        = null #"storagestaticbackend.blob.core.windows.net"
    },
    {
      name         = "BACKEND.DEFAULT"
      ip_addresses = ["20.160.204.211"]
      fqdns        = null #"storagestaticbackend.blob.core.windows.net" #/$web/index.html"
    }
  ]
}
