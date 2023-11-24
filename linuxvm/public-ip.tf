resource "azurerm_public_ip" "linuxvm_publicip" {
  name                = "linuxvm_publicip"
  resource_group_name = azurerm_resource_group.linuxvm_rg.name
  location            = azurerm_resource_group.linuxvm_rg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}