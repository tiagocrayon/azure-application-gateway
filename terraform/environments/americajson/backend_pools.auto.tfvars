backend_pools = [
  {
    name         = "BACKEND.DEFAULT"
    ip_addresses = ["10.0.0.0"]
    fqdns        = null
  },
  {
    name         = "BACKEND.LATAM-DOCKER"
    ip_addresses = ["10.0.0.31", "10.0.0.32"]
    fqdns        = null
  },
  {
    name         = "BACKEND.GLOBAL-DOCKER"
    ip_addresses = ["10.0.0.51", "10.0.0.52"]
    fqdns        = null
  },
  {
    name         = "BACKEND.PRD-BR-CT"
    ip_addresses = ["10.0.20.14"]
    fqdns        = null
  },
  {
    name         = "BACKEND.GLOBAL-WEB-VM1_GLOBAL-WEB-VM2"
    ip_addresses = ["10.0.0.61", "10.0.0.62"]
    fqdns        = null
  },
  {
    name         = "BACKEND.PRD-NA-CT"
    ip_addresses = ["10.0.10.14"]
    fqdns        = null
  },
  {
    name         = "BACKEND.BE-IP-BR1_BE-IP-MX1"
    ip_addresses = ["10.0.12.21", "10.0.26.21"]
    fqdns        = null
  },
  {
    name         = "BACKEND.BE-IP-BR1_BE-IP-GLOBAL"
    ip_addresses = ["10.0.12.21", "10.0.0.20"]
    fqdns        = null
  },
  {
    name         = "BACKEND.BE-IP-BR1_BE-IP-MX1_BE-IP-GLOBAL"
    ip_addresses = ["10.0.12.21", "10.0.0.20", "10.0.26.21"]
    fqdns        = null
  },
  {
    name         = "BACKEND.BE-IP-GLOBAL"
    ip_addresses = ["10.0.0.20"]
    fqdns        = null
  },
]
