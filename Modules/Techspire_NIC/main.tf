resource "azurerm_network_interface" "nic_block" {

   name                = var.techspire_nic_name
  location            = var.techspire_nic_location
  resource_group_name = var.techspire_nic_resource_group_name

  ip_configuration {
    name                          = "techspire_ip01"
    subnet_id                     = var.techspire_nic_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}