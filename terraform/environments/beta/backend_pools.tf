variable "backend_pools" {
  type = list(object({
    name        = string
    fqdns       = optional(string)
    ip_addresses = optional(list(string))
  }))
  default = [
    {
      name: "BACKEND.DEFAULT",
      ip_addresses: ["10.0.10.0"],
      fqdns: null
    },
    {
      name: "BACKEND.STORE-BETA-VMSS",
      ip_addresses: ["10.7.10.14"],
      fqdns: null
    },
    {
      name: "BACKEND.BE-BETA-DCK1-BE-BETA-DCK2",
      ip_addresses: ["10.7.10.31", "10.7.10.32"],
      fqdns: null
    },
    {
      name: "BACKEND.BE-BETA-VM01-BE-BETA-VM02",
      ip_addresses: ["10.7.10.21", "10.7.10.22"],
      fqdns: null
    },
    {
      name: "BACKEND.YOUTRACK",
      ip_addresses: ["192.168.10.196"],
      fqdns: null
    }
  ]
}
