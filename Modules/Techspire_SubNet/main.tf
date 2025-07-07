resource "azurerm_subnet" "subnet_block" {
  name                 = var.techspire_subnet_name
  resource_group_name  = var.techspire_subnet_resource_group_name
  virtual_network_name = var.techspire_vnetofsubnet_name
  address_prefixes     = var.techspire_subnet_address_prefixes
}