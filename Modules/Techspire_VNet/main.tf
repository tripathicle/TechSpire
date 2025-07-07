resource "azurerm_virtual_network" "vm_block" {
  name                = var.techspire_vnet_name
  address_space       = var.techspire_vnet_address_space
  location            = var.techspire_vnet_location
  resource_group_name = var.techspire_vnet_resource_group_name
}