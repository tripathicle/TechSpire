output "techspire_storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storage_account_block.name
}

output "techspire_storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storage_account_block.id
}

output "techspire_storage_account_location" {
  description = "The location of the storage account."
  value       = azurerm_storage_account.storage_account_block.location
}

output "techspire_storage_account_tier" {
  description = "The tier of the storage account."
  value       = azurerm_storage_account.storage_account_block.account_tier
}

output "techspire_storage_account_replication_type" {
  description = "The replication type of the storage account."
  value       = azurerm_storage_account.storage_account_block.account_replication_type
}
