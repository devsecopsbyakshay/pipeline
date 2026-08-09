data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "block_az_key_vault" {
  for_each                    = var.az_key_vault
  name                        = each.value.az_key_vault_name
  location                    = each.value.az_key_vault_location
  resource_group_name         = each.value.az_key_vault_resource_group_name
  rbac_authorization_enabled  = each.value.az_key_vault_rbac_authorization_enabled
  enabled_for_disk_encryption = each.value.az_key_vault_enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = each.value.az_key_vault_soft_delete_retention_days
  purge_protection_enabled    = each.value.az_key_vault_purge_protection_enabled
  sku_name                    = each.value.az_key_vault_sku_name

  access_policy {
    tenant_id           = data.azurerm_client_config.current.tenant_id
    object_id           = data.azurerm_client_config.current.object_id
    key_permissions     = each.value.az_key_vault_key_permissions
    secret_permissions  = each.value.az_key_vault_secret_permissions
    storage_permissions = each.value.az_key_vault_storage_permissions
  }
}
