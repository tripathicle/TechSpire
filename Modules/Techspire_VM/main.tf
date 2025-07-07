resource "azurerm_virtual_machine" "vm_block" {
  name                  = var.techspire_vm_name
  location              = var.techspire_vm_location
  resource_group_name   = var.techspire_vm_resource_group_name
  network_interface_ids = var.techspire_vm_network_interface_ids
 vm_size               = "Standard_B1s"

 

  storage_image_reference {
    publisher = "Canonical" 
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = var.techspire_vm_os_disk_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}
