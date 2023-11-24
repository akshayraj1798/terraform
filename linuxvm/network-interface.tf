resource "azurerm_network_interface" "linuxvm_networkinterface" {
  name                = "linuxvm_networkinterface"
  location            = azurerm_resource_group.linuxvm_rg.location
  resource_group_name = azurerm_resource_group.linuxvm_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.linuxvm_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linuxvm_publicip.id
  }
}
