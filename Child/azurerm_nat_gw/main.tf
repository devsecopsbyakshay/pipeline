resource "azurerm_nat_gateway" "block_azurerm_nat_gw" {
  for_each                = var.nat_gws
  name                    = each.value.nat_gws_name
  location                = each.value.nat_gws_location
  resource_group_name     = each.value.nat_gws_resource_group_name
  sku_name                = each.value.nat_gws_sku_name
  idle_timeout_in_minutes = each.value.nat_gws_idle_timeout_in_minutes
  # zones                   = each.value.nat_gws_zones
}







