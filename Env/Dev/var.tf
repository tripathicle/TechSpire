variable "techspire_resourcegroup_name" {
  description = "The name of the resource group name"
  type        = string
}

variable "techspire_resourcegroup_location" {
  description = "The name of the resource group location"
  type        = string
}


variable "techspire_vnet_name" {
  description = "Name of the Techspire VNet"
  type        = string
  
  
}
variable "techspire_vnet_address_space" {
  description = "Address space for the Techspire VNet"
  type        = list(string)
}
variable "techspire_vnet_location" {
  description = "Location for the Techspire VNet"
  type        = string
}
variable "techspire_vnet_resource_group_name" {
  description = "Resource group name for the Techspire VNet"
  type        = string
}
variable "techspire_storage_account_name" {
  description = "The name of the storage account."
  type        = string
  
}
variable "techspire_storage_account_resource_group_name" {
  description = "The resource group name for the storage account."
  type        = string

}
variable "techspire_storage_account_location" {
  description = "The location of the storage account."
  type        = string

}
variable "techspire_storage_account_tier" {
  description = "The tier of the storage account."
  type        = string

}
variable "techspire_storage_account_replication_type" {
  description = "The replication type of the storage account."
  type        = string

}

variable "techspire_subnet_resource_group_name" {
  type = string
}

variable "techspire_frontend_subnet_name" {
  description = "Name of the frontend subnet"
  type        = string
}

variable "techspire_backend_subnet_name" {
  description = "Name of the backend subnet"
  type        = string
}

# variable "techspire_vnet_name" {
#   description = "Name of the VNet for both subnets"
#   type        = string
# }

variable "techspire_resource_group_name" {
  description = "Resource group in which the subnets are created"
  type        = string
}

variable "techspire_frontend_subnet_address_prefixes" {
  description = "Address prefixes for the frontend subnet"
  type        = list(string)
}

variable "techspire_backend_subnet_address_prefixes" {
  description = "Address prefixes for the backend subnet"
  type        = list(string)
}

variable "techspire_frontend_nic_name" {
  description = "Name of the frontend NIC"
  type        = string
}

variable "techspire_frontend_nic_location" {
  description = "Location of the frontend NIC"
  type        = string
}

variable "techspire_frontend_nic_resource_group_name" {
  description = "Resource group name for the frontend NIC"
  type        = string
}

variable "techspire_frontend_nic_subnet_id" {
  description = "Subnet ID for the frontend NIC"
  type        = string
}

variable "techspire_backend_nic_name" {
  description = "Name of the backend NIC"
  type        = string
}

variable "techspire_backend_nic_location" {
  description = "Location of the backend NIC"
  type        = string
}

variable "techspire_backend_nic_resource_group_name" {
  description = "Resource group name for the backend NIC"
  type        = string
}

variable "techspire_backend_nic_subnet_id" {
  description = "Subnet ID for the backend NIC"
  type        = string
}


variable "techspire_frontend_pip_name" {
  type        = string
  description = "Name of the Public IP (common if reused)"
}

variable "techspire_frontend_pip_location" {
  type        = string
  description = "Location for frontend Public IP"
}

variable "techspire_frontend_pip_resource_group_name" {
  type        = string
  description = "Resource group for frontend Public IP"
}

variable "techspire_backend_pip_name" {
  type        = string
  description = "Name for backend Public IP"
}

variable "techspire_backend_pip_location" {
  type        = string
  description = "Location for backend Public IP"
}

variable "techspire_backend_pip_resource_group_name" {
  type        = string
  description = "Resource group for backend Public IP"
}

variable "techspire_frontend_pip_allocation_method" {
  type        = string
  description = "Allocation method for frontend Public IP (Static or Dynamic)"
  
}
variable "techspire_backend_pip_allocation_method" {
  type        = string
  description = "Allocation method for backend Public IP (Static or Dynamic)"
  
}

variable "techspire_frontend_vm_name" {
  description = "Name of the frontend VM"
  type        = string
}

variable "techspire_backend_vm_name" {
  description = "Name of the backend VM"
  type        = string
}

variable "techspire_frontend_vm_location" {
  description = "Location for frontend VM"
  type        = string
}

variable "techspire_frontend_vm_resource_group_name" {
  description = "Resource group for frontend VM"
  type        = string
}

variable "techspire_backend_vm_location" {
  description = "Location for backend VM"
  type        = string
}

variable "techspire_backend_vm_resource_group_name" {
  description = "Resource group for backend VM"
  type        = string
}

variable "techspire_frontend_vm_network_interface_ids" {
  description = "Network interface IDs for the frontend VM"
  type        = list(string)
}
variable "techspire_backend_vm_network_interface_ids" {
  description = "Network interface IDs for the backend VM"
  type        = list(string)
}

variable "techspire_frontend_vm_os_disk_name" {
  description = "Unique OS disk name for the VM"
  type        = string
}

variable "techspire_backend_vm_os_disk_name" {
  description = "Unique OS disk name for the VM"
  type        = string
}

