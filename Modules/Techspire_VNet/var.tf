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