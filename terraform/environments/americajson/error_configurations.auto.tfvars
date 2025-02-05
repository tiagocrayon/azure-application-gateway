error_configurations = [
  {
    status_code         = "HttpStatus400"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/400.html"
  },
  {
    status_code         = "HttpStatus403"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/403.html"
  },
  # {
  #   status_code         = "HttpStatus404"
  #   custom_error_page_url = ""
  # },
  # {
  #   status_code         = "HttpStatus405"
  #   custom_error_page_url = ""
  # },
  {
    status_code         = "HttpStatus408"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/408.html"
  },
  {
    status_code         = "HttpStatus500"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/500.html"
  },
  {
    status_code         = "HttpStatus502"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/502.html"
  },
  {
    status_code         = "HttpStatus503"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/503.html"
  },
  {
    status_code         = "HttpStatus504"
    custom_error_page_url = "https://storagestaticbackend.blob.core.windows.net/$web/504.html"
  }
]