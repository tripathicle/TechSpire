resource "azurerm_storage_account" "storage_account_block" {
  name                     = var.techspire_storage_account_name
  resource_group_name      = var.techspire_storage_account_resource_group_name
  location                 = var.techspire_storage_account_location
  account_tier             = var.techspire_storage_account_tier
  account_replication_type = var.techspire_storage_account_replication_type
}
