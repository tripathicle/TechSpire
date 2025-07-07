output "azurerm_network_interface_id" {
  description = "The ID of the network interface"
  value       = azurerm_network_interface.nic_block.id
}

output "azurerm_network_interface_name" {
  description = "The name of the network interface"
  value       = azurerm_network_interface.nic_block.name
}

output "azurerm_network_interface_location" {
  description = "The location of the network interface"
  value       = azurerm_network_interface.nic_block.location
}