resource "azurerm_network_security_group" "linuxvm_nsg" {
  name                = "linuxvm_nsg"
  location            = azurerm_resource_group.linuxvm_rg.location
  resource_group_name = azurerm_resource_group.linuxvm_rg.name

  security_rule {
    name                       = "test123"
    priority                   = 105
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}

resource "azurerm_subnet_network_security_group_association" "linuxvm_networksecuritygtoupassociation" {
  subnet_id                 = azurerm_subnet.linuxvm_subnet.id
  network_security_group_id = azurerm_network_security_group.linuxvm_nsg.id
}
