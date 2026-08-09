variable "nat_gws" {
  type = map(object({
    nat_gws_name                    = string
    nat_gws_location                = string
    nat_gws_resource_group_name     = string
    nat_gws_sku_name                = string
    nat_gws_idle_timeout_in_minutes = number
    nat_gws_zones                   = list(string)
  }))
}