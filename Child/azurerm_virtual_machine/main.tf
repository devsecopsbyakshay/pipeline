
data "azurerm_network_interface" "data_nic" {
  for_each            = var.vms
  name                = each.value.nic_name
  resource_group_name = each.value.nic_resource_group_name
}

data "azurerm_key_vault" "data_key_vault" {
  for_each            = var.vms
  name                = each.value.kv_name
  resource_group_name = coalesce(each.value.kv_rg_name, each.value.vm_resource_group_name)
}

# Data block to read secrets from Key Vault
data "azurerm_key_vault_secret" "vm_passwords" {
  for_each     = var.vms
  name         = "${each.value.vm_name}-admin-password" # E.g., frontendvm-admin-password, backendvm-admin-password
  key_vault_id = data.azurerm_key_vault.data_key_vault[each.key].id
}

resource "azurerm_linux_virtual_machine" "block_virtual_machine" {
  for_each                        = var.vms
  name                            = each.value.vm_name
  resource_group_name             = each.value.vm_resource_group_name
  location                        = each.value.vm_location
  size                            = each.value.vm_size
  admin_username                  = each.value.vm_admin_username
  admin_password                  = data.azurerm_key_vault_secret.vm_passwords[each.key].value # admin_password                  = each.value.admin_password
  disable_password_authentication = each.value.disable_password_authentication

  network_interface_ids = [
    data.azurerm_network_interface.data_nic[each.key].id
  ]

  os_disk {
    caching              = each.value.vm_os_disk_caching
    storage_account_type = each.value.vm_os_disk_storage_account_type
  }

  source_image_reference {
    publisher = each.value.vm_source_image_reference_publisher
    offer     = each.value.vm_source_image_reference_offer
    sku       = each.value.vm_source_image_reference_sku
    version   = each.value.vm_source_image_reference_version
  }
}



