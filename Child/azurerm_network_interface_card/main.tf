data "azurerm_subnet" "data_azurerm_subnet" {
  for_each             = var.nics
  name                 = each.value.nic_ip_configuration_subnet_name
  virtual_network_name = each.value.nic_ip_configuration_vnet_name
  resource_group_name  = each.value.nic_resource_group_name
}


resource "azurerm_network_interface" "block_NIC" {
  for_each            = var.nics
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.nic_resource_group_name

  ip_configuration {
    name      = each.value.nic_ip_configuration_name
    subnet_id = data.azurerm_subnet.data_azurerm_subnet[each.key].id
    # public_ip_address_id          = ""
    private_ip_address_allocation = each.value.nic_ip_configuration_private_ip_address_allocation
  }
}
