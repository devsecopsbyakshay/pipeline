variable "nsgs" {
  type = map(object({
    nsg_name                = string
    nsg_location            = string
    nsg_resource_group_name = string

    nsg_security_rule = list(object({
      nsg_rule_name                       = string
      nsg_rule_priority                   = number
      nsg_rule_direction                  = string
      nsg_rule_access                     = string
      nsg_rule_protocol                   = string
      nsg_rule_source_port_range          = string
      nsg_rule_destination_port_range     = string
      nsg_rule_source_address_prefix      = string
      nsg_rule_destination_address_prefix = string
    }))
  }))

}