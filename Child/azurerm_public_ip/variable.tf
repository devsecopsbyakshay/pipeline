variable "pips" {
  type = map(object({
    pip_name                = string
    pip_resource_group_name = string
    pip_location            = string
    pip_allocation_method   = string
  }))
}
