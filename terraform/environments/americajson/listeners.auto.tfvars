listeners = [
  #HTTP -> HTTPS
  # http-request redirect code 301 location \ https://www.%[hdr(host)]%[capture.req.uri] if { hdr(host) -f /etc/haproxy/redirect2www.cfg } ! { hdr_beg(host) -f /etc/haproxy/redirect_beg_exceptions.cfg }
  # HOST 360imprimir.com.mx definido em "MX_360imprimir-listener-https-443"
  # HOST 360imprimir.com.br definido em "360imprimir_Administrative_BR-listener-https-443"
  # HOST bizay.ca definido em "BIZAY_CA_MX_360imprimir-listener-https-443"
  # HOST bizay.com definido em "BIZAY_COM_US_MX_360imprimir-listener-https-443"


  #https://www.360imprimir.com.mx
  {
    name                           = "360imprimir_com_mx-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    host_names                     = ["www.360imprimir.com.mx"]
    ssl_certificate_name           = "certificado-1"
  },
  {
    name                           = "360imprimir_mx-listener-http-80"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-80"
    protocol                       = "Http"
    host_names                     = ["360imprimir.mx", "www.360imprimir.mx"]
  },
  {
    name                           = "imprimir360_mx-listener-http-80"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-80"
    protocol                       = "Http"
    host_names                     = ["imprimir360.mx", "www.imprimir360.mx"]
  },
  {
    name                           = "imprimir360_com_mx-listener-http-80"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-80"
    protocol                       = "Http"
    host_names                     = ["imprimir360.com.mx", "www.imprimir360.com.mx"]
  },
  #https://www.360imprimir.com.br
  {
    name                           = "360imprimir_com_br-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    host_names                     = ["www.360imprimir.com.br"]
    ssl_certificate_name           = "certificado-1"
  },
  {
    name                           = "360imprimir_com_br-listener-http-80"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-80"
    protocol                       = "Http"
    host_names                     = ["360imprimi.com.br", "www.360imprimi.com.br"]
  },
  {
    name                           = "360print_com_br-listener-http-80"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-80"
    protocol                       = "Http"
    host_names                     = ["360print.com.br", "www.360print.com.br"]
  },
  {
    name                           = "imprimir360_com_br-listener-http-80"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-80"
    protocol                       = "Http"
    host_names                     = ["imprimir360.com.br", "www.imprimir360.com.br"]
  },


  #HTTPS


  {
    name                           = "360imprimir_Administrative_BR-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["360imprimir.com.br", "www.360imprimir.com.br"]
  },
  {
    name                           = "auth_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["auth.360imprimir.com", "authapi.360imprimir.com"]
  },
  {
    name                           = "360imprimir_BR-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["www.mailer.360imprimir.com.br"]
  },
  {
    name                           = "GEOIP_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["geoip.360imprimir.com"]
  },
  {
    name                           = "MASTER_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["master.360imprimir.com", "masterapi.360imprimir.com"]
  },
  {
    name                           = "MX_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["360imprimir.com.mx", "www.360imprimir.com.mx", "www.mailer.360imprimir.com.mx"]
  },
  {
    name                           = "BIZAY_CA_MX_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["bizay.ca", "www.bizay.ca"]
  },
  {
    name                           = "BIZAY_COM_US_MX_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["bizay.com", "www.bizay.com", "us.bizay.com"]
  },
  {
    name                           = "STUDIO_360imprimir-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studio.360imprimir.com", "studioapi.360imprimir.com"]
  },
  {
    name                           = "API_360imprimir_BR-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["api.360imprimir.com.br"]
  },
  {
    name                           = "API_360imprimir_MX-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["api.360imprimir.com.mx"]
  },
  {
    name                           = "IMG_360imprimir_BR-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["imgprocessor.360imprimir.com.br"]
  },
  {
    name                           = "IMG_360imprimir_MX-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["imgprocessor.360imprimir.com.mx"]
  },
  {
    name                           = "IMG_360imprimir_STUDIO-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studioimgprocessor.360imprimir.com"]
  },
  {
    name                           = "IMG_API_360imprimir_BR-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["imgprocessorwebapi.360imprimir.com.br"]
  },                                    
  {
    name                           = "IMG_API_360imprimir_MX-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["imgprocessorwebapi.360imprimir.com.mx"]
  },
  {
    name                           = "studioclient_360imprimir_br-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studioclient.360imprimir.com.br"]
  },
  {
    name                           = "studioclient_360imprimir_mx-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studioclient.360imprimir.com.mx"]
  },
  {
    name                           = "studio360coreapi-listener-https-9090"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-9090"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studiocoreapi.360imprimir.com"]
  },
  {
    name                           = "studio360eventsourcing-listener-https-9590"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-9590"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studioeventsourcing.360imprimir.com"]
  },
  {
    name                           = "studio360templateapi-listener-https-9190"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-9190"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studiotemplateapi.360imprimir.com"]
  },
  {
    name                           = "studiotemplategenerator-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studiotemplategenerator.360imprimir.com"]
  },
  {
    name                           = "userimagesservice_br-listener-https-9291"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-9291"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["userimagesservice.360imprimir.com.br"]
  },
  {
    name                           = "userimagesservice_mx-listener-https-9292"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-9292"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["userimagesservice.360imprimir.com.mx"]
  },
  {
    name                           = "studio360client_br-listener-https-443"
    frontend_ip_configuration_name = "public-frontend-ip"
    frontend_port_name             = "port-443"
    protocol                       = "Https"
    ssl_certificate_name           = "certificado-1"
    host_names                     = ["studioclientbr.360imprimir.com.br"]
  }
]
