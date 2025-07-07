output "azurerm_resource_group_name" {
    description = "The name of the resource group"
    value       = azurerm_resource_group.rgblock.name
}
output "azurerm_resource_group_location" {
    description = "The location of the resource group"
    value       = azurerm_resource_group.rgblock.location

}



