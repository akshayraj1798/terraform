resource "azurerm_virtual_network" "linuxvm_virtualnetwork" {
  name                = "linuxvm_virtualnetwork"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.linuxvm_rg.location
  resource_group_name = azurerm_resource_group.linuxvm_rg.name
}