output "techspire_subnet_name" {
  description = "Name of the subnet"
  value       = azurerm_subnet.subnet_block.name
}
output "techspire_subnet_id" {
  description = "ID of the subnet"
  value       = azurerm_subnet.subnet_block.id
}
output "techspire_subnet_virtual_network_name" {
  description = "Name of the virtual network"
  value       = azurerm_subnet.subnet_block.virtual_network_name
}
output "techspire_subnet_address_prefixes" {
  description = "Address prefixes of the subnet"
  value       = azurerm_subnet.subnet_block.address_prefixes
}