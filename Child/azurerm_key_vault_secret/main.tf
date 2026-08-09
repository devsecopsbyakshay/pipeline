# Fetch Key Vault ID using data block (or direct reference)
data "azurerm_key_vault" "kv" {
  for_each            = var.key_vault_secrets
  name                = each.value.kv_name
  resource_group_name = each.value.secret_rg_name
}

# Create Secrets in Key Vault
resource "azurerm_key_vault_secret" "vm_secrets" {
  for_each     = var.key_vault_secrets
  name         = each.value.secret_name
  value        = each.value.secret_value
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}