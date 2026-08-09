variable "subnets" {
  type = map(object({
    subnet_name                 = string
    subnet_resource_group_name  = string
    subnet_virtual_network_name = string
    subnet_address_prefixes     = list(string)
  }))
}