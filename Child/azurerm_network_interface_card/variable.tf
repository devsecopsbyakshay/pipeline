variable "nics" {
  type = map(object({
    nic_name                                           = string
    nic_location                                       = string
    nic_resource_group_name                            = string
    nic_ip_configuration_name                          = string
    nic_ip_configuration_subnet_name                   = string
    nic_ip_configuration_vnet_name                     = string
    nic_ip_configuration_private_ip_address_allocation = string
  }))

}