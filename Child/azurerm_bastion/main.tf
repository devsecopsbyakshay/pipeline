data "azurerm_subnet" "data_azurerm_subnet" {
  for_each             = var.azbastion
  name                 = each.value.bastion_ip_configuration_subnet_name
  virtual_network_name = each.value.bastion_ip_configuration_virtual_network_name
  resource_group_name  = each.value.bastion_resource_group_name
}

data "azurerm_public_ip" "data_azurerm_public_ip" {
  for_each            = var.azbastion
  name                = each.value.bastion_ip_configuration_public_ip_address_name
  resource_group_name = each.value.bastion_resource_group_name
}

resource "azurerm_bastion_host" "block_azurerm_bastion" {
  for_each            = var.azbastion
  name                = each.value.bastion_name
  location            = each.value.bastion_location
  resource_group_name = each.value.bastion_resource_group_name

  ip_configuration {
    name                 = each.value.bastion_ip_configuration_name
    subnet_id            = data.azurerm_subnet.data_azurerm_subnet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.data_azurerm_public_ip[each.key].id
  }
}
