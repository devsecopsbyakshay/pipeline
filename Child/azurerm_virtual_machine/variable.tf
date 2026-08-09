
variable "vms" {
  type = map(object({
    nic_name                = string
    nic_resource_group_name = string

    vm_name                         = string
    vm_resource_group_name          = string
    vm_location                     = string
    vm_size                         = string
    vm_admin_username               = string
    vm_network_interface_ids        = optional(list(string))
    vm_admin_ssh_key_username       = string
    admin_password                  = optional(string)
    disable_password_authentication = bool
    kv_name                         = string
    kv_rg_name                      = optional(string)

    vm_os_disk_caching              = string
    vm_os_disk_storage_account_type = string

    vm_source_image_reference_publisher = string
    vm_source_image_reference_offer     = string
    vm_source_image_reference_sku       = string
    vm_source_image_reference_version   = string

  }))
}


variable "key_vault_secrets" {
  type = map(object({
    secret_name    = string
    secret_value   = string
    kv_name        = string
    secret_rg_name = string
  }))

}