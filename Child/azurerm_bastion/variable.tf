
variable "azbastion" {
  type = map(object({
    bastion_name                                    = string
    bastion_location                                = string
    bastion_resource_group_name                     = string
    bastion_ip_configuration_name                   = string
    bastion_ip_configuration_subnet_name            = string
    bastion_ip_configuration_virtual_network_name   = string
    bastion_ip_configuration_public_ip_address_name = string
  }))
}
