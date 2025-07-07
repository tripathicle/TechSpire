variable "techspire_vm_name" {
  description = "Name of the Techspire VM"
  type        = string
  
  
}
variable "techspire_vm_location" {
  description = "Location of the Techspire VM"
  type        = string
}
variable "techspire_vm_resource_group_name" {
  description = "Resource group name for the Techspire VM"
  type        = string
}
variable "techspire_vm_network_interface_ids" {
  description = "Network interface IDs for the Techspire VM"
  type        = list(string)
}

variable "techspire_vm_os_disk_name" {
  description = "Unique OS disk name for the VM"
  type        = string
}
