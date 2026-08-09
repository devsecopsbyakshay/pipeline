resource "azurerm_resource_group" "block_resource_group" {
  for_each = var.rgs
  name     = each.value.resource_group_name
  location = each.value.resource_group_location
}