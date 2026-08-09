
variable "nat_gw_pip_association" {
  type = map(object({
    nat_gw_resource_group_name    = string
    nat_gw_name                   = string
    nat_gw_public_ip_address_name = string
  }))
}
