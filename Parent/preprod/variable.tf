variable "rgs" {
  type = map(object({
    resource_group_name     = string
    resource_group_location = string
  }))
}

# variable "vnets" {
#   type = map(object({
#     virtual_network_name                = string
#     virtual_network_location            = string
#     virtual_network_resource_group_name = string
#     virtual_network_address_space       = list(string)

#   }))
# }

# variable "subnets" {
#   type = map(object({
#     subnet_name                 = string
#     subnet_resource_group_name  = string
#     subnet_virtual_network_name = string
#     subnet_address_prefixes     = list(string)
#   }))
# }

# variable "pips" {
#   type = map(object({
#     pip_name                = string
#     pip_resource_group_name = string
#     pip_location            = string
#     pip_allocation_method   = string
#   }))
# }

# variable "nsgs" {
#   type = map(object({
#     nsg_name                = string
#     nsg_location            = string
#     nsg_resource_group_name = string

#     nsg_security_rule = list(object({
#       nsg_rule_name                       = string
#       nsg_rule_priority                   = number
#       nsg_rule_direction                  = string
#       nsg_rule_access                     = string
#       nsg_rule_protocol                   = string
#       nsg_rule_source_port_range          = string
#       nsg_rule_destination_port_range     = string
#       nsg_rule_source_address_prefix      = string
#       nsg_rule_destination_address_prefix = string
#     }))
#   }))

# }

# variable "subnet_associatae_nsg" {
#   type = map(object({
#     rg_name     = string
#     vnet_name   = string
#     subnet_name = string
#     nsg_name    = string
#   }))
# }

# variable "nics" {
#   type = map(object({
#     nic_name                                           = string
#     nic_location                                       = string
#     nic_resource_group_name                            = string
#     nic_ip_configuration_name                          = string
#     nic_ip_configuration_subnet_name                   = string
#     nic_ip_configuration_vnet_name                     = string
#     nic_ip_configuration_private_ip_address_allocation = string
#   }))

# }


# variable "vms" {
#   type = map(object({
#     nic_name                = string
#     nic_resource_group_name = string

#     vm_name                         = string
#     vm_resource_group_name          = string
#     vm_location                     = string
#     vm_size                         = string
#     vm_admin_username               = string
#     vm_network_interface_ids        = optional(list(string))
#     vm_admin_ssh_key_username       = string
#     admin_password                  = optional(string)
#     disable_password_authentication = bool
#     kv_name                         = string
#     kv_rg_name                      = optional(string)
#     vm_os_disk_caching              = string
#     vm_os_disk_storage_account_type = string

#     vm_source_image_reference_publisher = string
#     vm_source_image_reference_offer     = string
#     vm_source_image_reference_sku       = string
#     vm_source_image_reference_version   = string

#   }))
# }


# variable "azbastion" {
#   type = map(object({
#     bastion_name                                    = string
#     bastion_location                                = string
#     bastion_resource_group_name                     = string
#     bastion_ip_configuration_name                   = string
#     bastion_ip_configuration_subnet_name            = string
#     bastion_ip_configuration_virtual_network_name   = string
#     bastion_ip_configuration_public_ip_address_name = string
#   }))
# }

# variable "nat_gws" {
#   type = map(object({
#     nat_gws_name                    = string
#     nat_gws_location                = string
#     nat_gws_resource_group_name     = string
#     nat_gws_sku_name                = string
#     nat_gws_idle_timeout_in_minutes = number
#     nat_gws_zones                   = list(string)
#   }))
# }

# variable "nat_gw_pip_association" {
#   type = map(object({
#     nat_gw_resource_group_name    = string
#     nat_gw_name                   = string
#     nat_gw_public_ip_address_name = string
#   }))
# }



# variable "az_key_vault" {
#   type = map(object({
#     az_key_vault_name                        = string
#     az_key_vault_location                    = string
#     az_key_vault_resource_group_name         = string
#     az_key_vault_rbac_authorization_enabled  = bool
#     az_key_vault_enabled_for_disk_encryption = bool
#     az_key_vault_soft_delete_retention_days  = number
#     az_key_vault_purge_protection_enabled    = bool
#     az_key_vault_sku_name                    = string
#     az_key_vault_key_permissions             = list(string)
#     az_key_vault_secret_permissions          = list(string)
#     az_key_vault_storage_permissions         = list(string)
#   }))
# }

# variable "key_vault_secrets" {
#   type = map(object({
#     secret_name    = string
#     secret_value   = string
#     kv_name        = string
#     secret_rg_name = string
#   }))

# }