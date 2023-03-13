resource "azurerm_virtual_network" "vndemo2" {
  name                = var.VN_name
  resource_group_name = var.RG_name
  location            = var.location
  address_space       = var.address_spaces
}
resource "azurerm_subnet" "subnet" {   
  name                 = var.subnet_name
  resource_group_name  = var.RG_name
  virtual_network_name = var.VN_name
  address_prefixes     = var.subnet_prefixes
  depends_on = [
    azurerm_virtual_network.vndemo2
  ]
}
