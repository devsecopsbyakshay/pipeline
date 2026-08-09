variable "vnets" {
  type = map(object({
    virtual_network_name                = string
    virtual_network_location            = string
    virtual_network_resource_group_name = string
    virtual_network_address_space       = list(string)

  }))
}
