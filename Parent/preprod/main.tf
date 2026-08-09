module "module_azurerm_resource_group" {
  source = "../../Child/azurerm_resource_group"
  rgs    = var.rgs
}

module "module_azurerm_virtual_network" {
  depends_on = [module.module_azurerm_resource_group]
  source     = "../../Child/azurerm_virtual_network"
  vnets      = var.vnets
}

module "module_azurerm_subnet" {
  depends_on = [module.module_azurerm_virtual_network]
  source     = "../../Child/azurerm_subnet"
  subnets    = var.subnets
}

# module "module_azurerm_pip" {
#   depends_on = [module.module_azurerm_resource_group]
#   source     = "../../Child/azurerm_public_ip"
#   pips       = var.pips
# }

# module "module_NSG" {
#   depends_on = [module.module_azurerm_resource_group]
#   source     = "../../Child/azurerm_NSG"
#   nsgs       = var.nsgs
# }

# module "module_subnet_associate_nsg" {
#   depends_on            = [module.module_azurerm_resource_group, module.module_azurerm_virtual_network, module.module_azurerm_subnet, module.module_NSG]
#   source                = "../../Child/azurerm_subnet_associate_NSG"
#   subnet_associatae_nsg = var.subnet_associatae_nsg
# }


# module "module_NIC" {
#   depends_on = [module.module_azurerm_subnet]
#   source     = "../../Child/azurerm_network_interface_card"
#   nics       = var.nics
# }


# module "module_vm" {
#   depends_on        = [module.module_NIC, module.module_NSG, module.module_az_key_vault_secrets]
#   source            = "../../Child/azurerm_virtual_machine"
#   vms               = var.vms
#   key_vault_secrets = var.key_vault_secrets

# }

# # module "module_azbastion" {
# #   depends_on = [module.module_azurerm_subnet, module.module_azurerm_pip]
# #   source     = "../../Child/azurerm_bastion"
# #   azbastion  = var.azbastion
# # }

# module "module_nat_gw" {
#   depends_on = [module.module_azurerm_resource_group]
#   source     = "../../Child/azurerm_nat_gw"
#   nat_gws    = var.nat_gws
# }

# module "module_nat_gw_pip_associate" {
#   depends_on             = [module.module_azurerm_subnet, module.module_nat_gw]
#   source                 = "../../Child/azurerm_nat_gw_pip_associate"
#   nat_gw_pip_association = var.nat_gw_pip_association
# }

# module "module_az_key_vault" {
#   depends_on   = [module.module_azurerm_resource_group]
#   source       = "../../Child/azurerm_key_vault"
#   az_key_vault = var.az_key_vault
# }

# module "module_az_key_vault_secrets" {
#   depends_on        = [module.module_az_key_vault]
#   source            = "../../Child/azurerm_key_vault_secret"
#   key_vault_secrets = var.key_vault_secrets
# }