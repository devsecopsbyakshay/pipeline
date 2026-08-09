data "azurerm_nat_gateway" "data_azurerm_nat_gateway" {
  for_each            = var.nat_gw_pip_association
  name                = each.value.nat_gw_name
  resource_group_name = each.value.nat_gw_resource_group_name
}

data "azurerm_public_ip" "data_azurerm_public_ip" {
  for_each            = var.nat_gw_pip_association
  name                = each.value.nat_gw_public_ip_address_name
  resource_group_name = each.value.nat_gw_resource_group_name
}

resource "azurerm_nat_gateway_public_ip_association" "block_azurerm_nat_gw_pip_associate" {
  for_each             = var.nat_gw_pip_association
  nat_gateway_id       = data.azurerm_nat_gateway.data_azurerm_nat_gateway[each.key].id
  public_ip_address_id = data.azurerm_public_ip.data_azurerm_public_ip[each.key].id
}

