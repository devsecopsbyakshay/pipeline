data "azurerm_subnet" "data_azurerm_subnet" {
  for_each             = var.subnet_associatae_nsg
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_network_security_group" "data_azurerm_network_security_group" {
  for_each            = var.subnet_associatae_nsg
  name                = each.value.nsg_name
  resource_group_name = each.value.rg_name
}

resource "azurerm_subnet_network_security_group_association" "block_subnet_associate_NSG" {
  for_each                  = var.subnet_associatae_nsg
  subnet_id                 = data.azurerm_subnet.data_azurerm_subnet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.data_azurerm_network_security_group[each.key].id
}
