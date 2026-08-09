
variable "key_vault_secrets" {
  type = map(object({
    secret_name    = string
    secret_value   = string
    kv_name        = string
    secret_rg_name = string
  }))

}