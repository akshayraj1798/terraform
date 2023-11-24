resource "azurerm_linux_virtual_machine" "linuxvm" {
  name                            = "linuxvm"
  resource_group_name             = azurerm_resource_group.linuxvm_rg.name
  location                        = azurerm_resource_group.linuxvm_rg.location
  size                            = "Standard_F2"
  admin_username                  = "akshay"
  admin_password                  = "password@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.linuxvm_networkinterface.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}