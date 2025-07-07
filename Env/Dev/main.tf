
module "azurerm_resource_group" {
  source = "../../Modules/Techspire_ResourceGroup"

  techspire_resourcegroup_name        = var.techspire_resourcegroup_name
  techspire_resourcegroup_location    = var.techspire_resourcegroup_location

}
module "Storage_Account" {
  source = "../../Modules/Techspire_StorageAccount"

  techspire_storage_account_name                = var.techspire_storage_account_name
  techspire_storage_account_resource_group_name = var.techspire_storage_account_resource_group_name
  techspire_storage_account_location            = var.techspire_storage_account_location
  techspire_storage_account_tier                = var.techspire_storage_account_tier
  techspire_storage_account_replication_type    = var.techspire_storage_account_replication_type
  
}

module "Techspire_VNet" {
  source = "../../Modules/Techspire_VNet"
  depends_on = [module.azurerm_resource_group] 

  techspire_vnet_name                = var.techspire_vnet_name
  techspire_vnet_address_space       = var.techspire_vnet_address_space
  techspire_vnet_location            = var.techspire_vnet_location
  techspire_vnet_resource_group_name = var.techspire_vnet_resource_group_name 
}

module "Techspire_SubNet_frontend" {
  source = "../../Modules/Techspire_SubNet"
  depends_on = [ module.Techspire_VNet ]
  techspire_subnet_name  = var.techspire_frontend_subnet_name
  techspire_vnetofsubnet_name = var.techspire_vnet_name
  techspire_subnet_resource_group_name = var.techspire_resource_group_name
  techspire_subnet_address_prefixes    = var.techspire_frontend_subnet_address_prefixes
}
module "Techspire_SubNet_backend" {
  source = "../../Modules/Techspire_SubNet"
  depends_on = [ module.Techspire_VNet ]
  techspire_subnet_name  = var.techspire_backend_subnet_name
  techspire_vnetofsubnet_name = var.techspire_vnet_name
  techspire_subnet_resource_group_name = var.techspire_resource_group_name
  techspire_subnet_address_prefixes    = var.techspire_backend_subnet_address_prefixes
}



module "Techspire_NIC_Frontend" {
  source = "../../Modules/Techspire_NIC"
  depends_on = [ module.Techspire_SubNet_frontend ]

  techspire_nic_name                = var.techspire_frontend_nic_name
  techspire_nic_location            = var.techspire_frontend_nic_location
  techspire_nic_resource_group_name = var.techspire_frontend_nic_resource_group_name
  techspire_nic_subnet_id           = var.techspire_frontend_nic_subnet_id

}


module "Techspire_NIC_Backend" {
  source = "../../Modules/Techspire_NIC"
  depends_on = [ module.Techspire_SubNet_backend ]

  techspire_nic_name                = var.techspire_backend_nic_name
  techspire_nic_location            = var.techspire_backend_nic_location
  techspire_nic_resource_group_name = var.techspire_backend_nic_resource_group_name
  techspire_nic_subnet_id           = var.techspire_backend_nic_subnet_id

}



module "Techspire_PIP_Frontend" {
  source = "../../Modules/Techspire_PIP"

  techspire_pip_name                = var.techspire_frontend_pip_name
  techspire_pip_location            = var.techspire_frontend_pip_location
  techspire_pip_resource_group_name = var.techspire_frontend_pip_resource_group_name
  techspire_pip_allocation_method   = var.techspire_frontend_pip_allocation_method
}

module "Techspire_PIP_Backend" {
  source = "../../Modules/Techspire_PIP"

  techspire_pip_name                = var.techspire_backend_pip_name
  techspire_pip_location            = var.techspire_backend_pip_location
  techspire_pip_resource_group_name = var.techspire_backend_pip_resource_group_name
  techspire_pip_allocation_method   = var.techspire_backend_pip_allocation_method
}

module "Techspire_frontend_vm" {
  source = "../../Modules/Techspire_VM"
  depends_on = [ module.Techspire_NIC_Frontend ]
  techspire_vm_name                = var.techspire_frontend_vm_name
  techspire_vm_location            = var.techspire_frontend_vm_location
  techspire_vm_resource_group_name = var.techspire_frontend_vm_resource_group_name
  techspire_vm_network_interface_ids = var.techspire_frontend_vm_network_interface_ids
  techspire_vm_os_disk_name= var.techspire_frontend_vm_os_disk_name
}

module "Techspire_backend_vm" {
  source = "../../Modules/Techspire_VM"
  depends_on = [ module.Techspire_NIC_Backend ]
  techspire_vm_name                = var.techspire_backend_vm_name
  techspire_vm_location            = var.techspire_backend_vm_location
  techspire_vm_resource_group_name = var.techspire_backend_vm_resource_group_name
  techspire_vm_network_interface_ids = var.techspire_backend_vm_network_interface_ids
  techspire_vm_os_disk_name= var.techspire_backend_vm_os_disk_name
}




