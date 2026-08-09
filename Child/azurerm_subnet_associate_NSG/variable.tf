variable "subnet_associatae_nsg" {
  type = map(object({
    rg_name     = string
    vnet_name   = string
    subnet_name = string
    nsg_name    = string
  }))
}