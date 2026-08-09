
# Resource Group
# rgs = {
# rg_detail_1 = {
#   resource_group_name     = "RG_Akshay"
#   resource_group_location = "westus"
# }

rgs = {
  rg_detail_1 = {
    resource_group_name     = "RG_Akshay_2"
    resource_group_location = "westus"
  }
}

# # virtual network
# vnets = {
#   vnet_details_1 = {
#     virtual_network_name                = "vnet_rgs"
#     virtual_network_location            = "westus"
#     virtual_network_resource_group_name = "RG_SKG"
#     virtual_network_address_space       = ["10.0.0.0/16"]
#   }
# }

# # Subnets
# subnets = {
#   "AzureBastionSubnet" = {
#     subnet_name                 = "AzureBastionSubnet"
#     subnet_resource_group_name  = "RG_SKG"
#     subnet_virtual_network_name = "vnet_rgs"
#     subnet_address_prefixes     = ["10.0.1.0/24"]
#   },
#   "frontendsubnet" = {
#     subnet_name                 = "FrontendSubnet"
#     subnet_resource_group_name  = "RG_SKG"
#     subnet_virtual_network_name = "vnet_rgs"
#     subnet_address_prefixes     = ["10.0.2.0/24"]
#   },
#   "backendsubnet" = {
#     subnet_name                 = "BackendSubnet"
#     subnet_resource_group_name  = "RG_SKG"
#     subnet_virtual_network_name = "vnet_rgs"
#     subnet_address_prefixes     = ["10.0.3.0/24"]
#   }
# }

# #public Ips
# pips = {
#   bastion_pip = {
#     pip_name                = "bastion_pip"
#     pip_resource_group_name = "RG_SKG"
#     pip_location            = "westus"
#     pip_allocation_method   = "Static"
#   },
#   frontend_pip = {
#     pip_name                = "frontend_pip"
#     pip_resource_group_name = "RG_SKG"
#     pip_location            = "westus"
#     pip_allocation_method   = "Static"
#   }
#   backend_pip = {
#     pip_name                = "backend_pip"
#     pip_resource_group_name = "RG_SKG"
#     pip_location            = "westus"
#     pip_allocation_method   = "Static"
#   }
# }

# # Network Security Group
# nsgs = {
#   frontend_nsg = {
#     nsg_name                = "frontend_nsg"
#     nsg_location            = "westus"
#     nsg_resource_group_name = "RG_SKG"

#     nsg_security_rule = [
#       {
#         nsg_rule_name                       = "Allow-HTTP"
#         nsg_rule_priority                   = 100
#         nsg_rule_direction                  = "Inbound"
#         nsg_rule_access                     = "Allow"
#         nsg_rule_protocol                   = "Tcp"
#         nsg_rule_source_port_range          = "*"
#         nsg_rule_destination_port_range     = "80"
#         nsg_rule_source_address_prefix      = "*"
#         nsg_rule_destination_address_prefix = "*"
#       },
#       {
#         nsg_rule_name                       = "Allow-HTTPS"
#         nsg_rule_priority                   = 110
#         nsg_rule_direction                  = "Inbound"
#         nsg_rule_access                     = "Allow"
#         nsg_rule_protocol                   = "Tcp"
#         nsg_rule_source_port_range          = "*"
#         nsg_rule_destination_port_range     = "443"
#         nsg_rule_source_address_prefix      = "*"
#         nsg_rule_destination_address_prefix = "*"
#       }
#     ]
#   },
#   backend_nsg = {
#     nsg_name                = "backend_nsg"
#     nsg_location            = "westus"
#     nsg_resource_group_name = "RG_SKG"

#     nsg_security_rule = [
#       {
#         nsg_rule_name                       = "Allow-HTTP"
#         nsg_rule_priority                   = 100
#         nsg_rule_direction                  = "Inbound"
#         nsg_rule_access                     = "Allow"
#         nsg_rule_protocol                   = "Tcp"
#         nsg_rule_source_port_range          = "*"
#         nsg_rule_destination_port_range     = "80"
#         nsg_rule_source_address_prefix      = "*"
#         nsg_rule_destination_address_prefix = "*"
#       },
#       {
#         nsg_rule_name                       = "Allow-HTTPS"
#         nsg_rule_priority                   = 110
#         nsg_rule_direction                  = "Inbound"
#         nsg_rule_access                     = "Allow"
#         nsg_rule_protocol                   = "Tcp"
#         nsg_rule_source_port_range          = "*"
#         nsg_rule_destination_port_range     = "443"
#         nsg_rule_source_address_prefix      = "*"
#         nsg_rule_destination_address_prefix = "*"
#       }
#     ]
#   }
# }

# subnet_associatae_nsg = {
#   subnet_nsg_1 = {
#     rg_name     = "RG_SKG"
#     vnet_name   = "vnet_rgs"
#     subnet_name = "frontendsubnet"
#     nsg_name    = "frontend_nsg"
#   }
#   subnet_bsg_2 = {
#     rg_name     = "RG_SKG"
#     vnet_name   = "vnet_rgs"
#     subnet_name = "backendsubnet"
#     nsg_name    = "backend_nsg"
#   }
# }

# nics = {
#   nics_1 = {
#     nic_name                                           = "nics_frontend_vm_1"
#     nic_location                                       = "westus"
#     nic_resource_group_name                            = "RG_SKG"
#     nic_ip_configuration_name                          = "frontend_vm_internal"
#     nic_ip_configuration_subnet_name                   = "frontendsubnet"
#     nic_ip_configuration_vnet_name                     = "vnet_rgs"
#     nic_ip_configuration_private_ip_address_allocation = "Dynamic"
#   }
#   nics_2 = {
#     nic_name                                           = "nics_backend_vm_1"
#     nic_location                                       = "westus"
#     nic_resource_group_name                            = "RG_SKG"
#     nic_ip_configuration_name                          = "bacnkend_vm_internal"
#     nic_ip_configuration_subnet_name                   = "backendsubnet"
#     nic_ip_configuration_vnet_name                     = "vnet_rgs"
#     nic_ip_configuration_private_ip_address_allocation = "Dynamic"
#   }
# }

# vms = {
#   vm_1 = {
#     nic_name                  = "nics_frontend_vm_1"
#     nic_resource_group_name   = "RG_SKG"
#     vm_name                   = "frontendvm"
#     vm_resource_group_name    = "RG_SKG"
#     vm_location               = "westus"
#     vm_size                   = "Standard_D2s_v3"
#     vm_admin_username         = "adminuser"
#     vm_admin_ssh_key_username = "adminuser"
#     kv_name                   = "azkeyvaultskg"
#     # admin_password                      = "J!ndalX#32547"
#     disable_password_authentication     = false
#     vm_os_disk_caching                  = "ReadWrite"
#     vm_os_disk_storage_account_type     = "Standard_LRS"
#     vm_source_image_reference_publisher = "Canonical"
#     vm_source_image_reference_offer     = "0001-com-ubuntu-server-jammy"
#     vm_source_image_reference_sku       = "22_04-lts"
#     vm_source_image_reference_version   = "latest"
#   }
#   vm_2 = {
#     nic_name                  = "nics_backend_vm_1"
#     nic_resource_group_name   = "RG_SKG"
#     vm_name                   = "backendvm"
#     vm_resource_group_name    = "RG_SKG"
#     vm_location               = "westus"
#     vm_size                   = "Standard_D2s_v3"
#     vm_admin_username         = "adminuser"
#     vm_admin_ssh_key_username = "adminuser"
#     kv_name                   = "azkeyvaultskg"
#     # admin_password                      = "J!ndalX#32547"
#     disable_password_authentication     = false
#     vm_os_disk_caching                  = "ReadWrite"
#     vm_os_disk_storage_account_type     = "Standard_LRS"
#     vm_source_image_reference_publisher = "Canonical"
#     vm_source_image_reference_offer     = "0001-com-ubuntu-server-jammy"
#     vm_source_image_reference_sku       = "22_04-lts"
#     vm_source_image_reference_version   = "latest"
#   }
# }

# azbastion = {
#   azbastiondetails = {
#     bastion_name                                    = "azure_bastion_prod"
#     bastion_location                                = "westus"
#     bastion_resource_group_name                     = "RG_SKG"
#     bastion_ip_configuration_name                   = "azure_bastion_prod_ip_config"
#     bastion_ip_configuration_subnet_name            = "AzureBastionSubnet"
#     bastion_ip_configuration_virtual_network_name   = "vnet_rgs"
#     bastion_ip_configuration_public_ip_address_name = "bastion_pip"
#   }
# }

# nat_gws = {
#   nat_gws_frontend = {
#     nat_gws_name                    = "nat_gws_frontend"
#     nat_gws_location                = "westus"
#     nat_gws_resource_group_name     = "RG_SKG"
#     nat_gws_sku_name                = "Standard"
#     nat_gws_idle_timeout_in_minutes = 10
#     nat_gws_zones                   = ["1"]
#   }
#   nat_gws_backend = {
#     nat_gws_name                    = "nat_gws_backend"
#     nat_gws_location                = "westus"
#     nat_gws_resource_group_name     = "RG_SKG"
#     nat_gws_sku_name                = "Standard"
#     nat_gws_idle_timeout_in_minutes = 10
#     nat_gws_zones                   = ["1"]
#   }
# }

# nat_gw_pip_association = {
#   nat_gw_pip_frontend = {
#     nat_gw_resource_group_name    = "RG_SKG"
#     nat_gw_name                   = "nat_gws_frontend"
#     nat_gw_public_ip_address_name = "frontend_pip"
#   }
#   nat_gw_pip_bacnkend = {
#     nat_gw_resource_group_name    = "RG_SKG"
#     nat_gw_name                   = "nat_gws_backend"
#     nat_gw_public_ip_address_name = "backend_pip"
#   }
# }

# az_key_vault = {
#   az_key_vault_details = {
#     az_key_vault_name                        = "azkeyvaultskg"
#     az_key_vault_location                    = "westus"
#     az_key_vault_resource_group_name         = "RG_SKG"
#     az_key_vault_rbac_authorization_enabled  = false
#     az_key_vault_enabled_for_disk_encryption = true
#     az_key_vault_soft_delete_retention_days  = 7
#     az_key_vault_purge_protection_enabled    = false
#     az_key_vault_sku_name                    = "standard"
#     az_key_vault_key_permissions             = ["Get", "Create", "Delete", "List"]
#     az_key_vault_secret_permissions          = ["Get", "Set", "Delete", "List", "Purge"]
#     az_key_vault_storage_permissions         = ["Get"]
#   }
# }


# key_vault_secrets = {
#   frontend_vm_pass = {
#     secret_name    = "frontendvm-admin-password"
#     secret_value   = "J!ndalX#32547"
#     kv_name        = "azkeyvaultskg"
#     secret_rg_name = "RG_SKG"
#   }
#   backend_vm_pass = {
#     secret_name    = "backendvm-admin-password"
#     secret_value   = "J!ndalX#32547"
#     kv_name        = "azkeyvaultskg"
#     secret_rg_name = "RG_SKG"
#   }
# }
