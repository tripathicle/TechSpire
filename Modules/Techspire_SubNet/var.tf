variable "techspire_subnet_name" {
  description = "Name of the subnet"
  type        = string
  
}
variable "techspire_subnet_resource_group_name" {
  description = "Resource group name for the subnet"
  type        = string

}
variable "techspire_vnetofsubnet_name" {
  description = "Name of the virtual network"
  type        = string

}
variable "techspire_subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)

}