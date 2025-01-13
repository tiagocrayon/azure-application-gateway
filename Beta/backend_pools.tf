variable "backend_pools" {
  type = list(object({
    name        = string
    fqdn        = string
  }))
  default = [
    {
      name        = "BACKEND.studio360coreapi"
      fqdn        = "storagestaticbackend.z6.web.core.windows.net"
    }
  ]
}