resource "azurerm_subnet" "linuxvm_subnet" {
  name                 = "linuxvm_subnet"
  resource_group_name  = azurerm_resource_group.linuxvm_rg.name
  virtual_network_name = azurerm_virtual_network.linuxvm_virtualnetwork.name
  address_prefixes     = ["10.0.2.0/24"]
}