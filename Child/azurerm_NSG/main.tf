resource "azurerm_network_security_group" "block_NSG" {
  for_each            = var.nsgs
  name                = each.value.nsg_name
  location            = each.value.nsg_location
  resource_group_name = each.value.nsg_resource_group_name

  # Outer loop for rules inside each NSG
  dynamic "security_rule" {
    for_each = each.value.nsg_security_rule
    content {
      name                       = security_rule.value.nsg_rule_name
      priority                   = security_rule.value.nsg_rule_priority
      direction                  = security_rule.value.nsg_rule_direction
      access                     = security_rule.value.nsg_rule_access
      protocol                   = security_rule.value.nsg_rule_protocol
      source_port_range          = security_rule.value.nsg_rule_source_port_range
      destination_port_range     = security_rule.value.nsg_rule_destination_port_range
      source_address_prefix      = security_rule.value.nsg_rule_source_address_prefix
      destination_address_prefix = security_rule.value.nsg_rule_destination_address_prefix
    }
  }
}