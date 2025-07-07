output "azurerm_virtual_network_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.vm_block.id
}

output "azurerm_virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.vm_block.name
}

output "azurerm_virtual_network_location" {
  description = "The location of the virtual network"
  value       = azurerm_virtual_network.vm_block.location
}
