resource "azurerm_public_ip" "pip-block" {
  name                = var.techspire_pip_name
  resource_group_name = var.techspire_pip_resource_group_name
  location            = var.techspire_pip_location
  allocation_method   = var.techspire_pip_allocation_method

  
}