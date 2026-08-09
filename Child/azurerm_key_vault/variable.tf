
variable "az_key_vault" {
  type = map(object({
    az_key_vault_name                        = string
    az_key_vault_location                    = string
    az_key_vault_resource_group_name         = string
    az_key_vault_rbac_authorization_enabled  = bool
    az_key_vault_enabled_for_disk_encryption = bool
    az_key_vault_soft_delete_retention_days  = number
    az_key_vault_purge_protection_enabled    = bool
    az_key_vault_sku_name                    = string
    az_key_vault_key_permissions             = list(string)
    az_key_vault_secret_permissions          = list(string)
    az_key_vault_storage_permissions         = list(string)
  }))
}