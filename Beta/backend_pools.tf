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
    },

    # {
    #   name         = "BACKEND.nefa_beta"
    #   ip_addresses = ["10.7.41.10"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.360imprimir-beta"
    #   ip_addresses = ["10.7.10.14"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.img-processor-beta"
    #   ip_addresses = ["10.7.10.21", "10.7.10.22"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.shared-services-beta"
    #   ip_addresses = ["10.7.10.21", "10.7.10.22"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.containers"
    #   ip_addresses = ["10.7.10.31", "10.7.10.32"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.BETA.FE2"
    #   ip_addresses = ["10.7.10.12"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.BETA.FE3"
    #   ip_addresses = ["10.7.10.11"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.BETA.IP1.SS1"
    #   ip_addresses = ["10.7.10.21"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.BETA.IP2.SS2"
    #   ip_addresses = ["10.7.10.22"]
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.DEF"
    #   ip_addresses = null
    #   fqdns        = "storagestaticbackend.blob.core.windows.net"
    # },
    # {
    #   name         = "BACKEND.OVERLOAD"
    #   ip_addresses = null
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.BUSY"
    #   ip_addresses = null
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.DENY"
    #   ip_addresses = null
    #   fqdns        = null
    # },
    # {
    #   name         = "BACKEND.STATS1.STATS2"
    #   ip_addresses = ["10.7.10.211"]
    #   fqdns        = null
    # },
  ]
}
