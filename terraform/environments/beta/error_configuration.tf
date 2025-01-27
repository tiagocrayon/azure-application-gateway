variable "error_configuration" {
  type = list(object({
    status_code             = string
    custom_error_page_url   = string
  }))
  default = [
  ]
}