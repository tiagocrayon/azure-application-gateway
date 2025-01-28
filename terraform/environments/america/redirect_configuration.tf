variable "redirect_configuration" {
  type = list(object({
    name                  = string
    redirect_type         = string
    target_listener_name  = string
    include_path          = bool
    include_query_string  = bool
  }))
  default = [
    # {
    #   name                  = "360imprimir_Administrative_BR-to-http-82-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "360imprimir_Administrative_BR-listener-http-82"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "auth_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "auth_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "360imprimir_BR-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "360imprimir_BR-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "GEOIP_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "GEOIP_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "MASTER_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "MASTER_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "MX_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "MX_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "BIZAY_CA_MX_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "BIZAY_CA_MX_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "BIZAY_COM_US_MX_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "BIZAY_COM_US_MX_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "STUDIO_360imprimir-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "STUDIO_360imprimir-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "API_360imprimir_BR-to-http-82-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "API_360imprimir_BR-listener-http-82"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "API_360imprimir_MX-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "API_360imprimir_MX-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "IMG_360imprimir_BR-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "IMG_360imprimir_BR-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "IMG_360imprimir_MX-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "IMG_360imprimir_MX-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "IMG_360imprimir_STUDIO-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "IMG_360imprimir_STUDIO-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "IMG_API_360imprimir_BR-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "IMG_API_360imprimir_BR-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "IMG_API_360imprimir_MX-to-http-80-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "IMG_API_360imprimir_MX-listener-http-80"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "studio360_360imprimir_br-to-http-9193-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "studioclient_360imprimir_br-listener-http-9193"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "studiotemplategenerator-to-http-9491-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "studiotemplategenerator-listener-http-9491"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "studio360client_br_latam-to-http-9193-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "studio360client_br_latam-listener-http-9193"
    #   include_path          = true
    #   include_query_string  = true
    # },
    # {
    #   name                  = "studio360client_mx-to-http-9194-redirect"
    #   redirect_type         = "Permanent"
    #   target_listener_name  = "studio360client_mx-listener-http-9194"
    #   include_path          = true
    #   include_query_string  = true
    # }
  ]
}



