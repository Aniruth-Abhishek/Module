data "azurerm_subnet" "subnet1" {
  name = var.subnet_name
  virtual_network_name = var.VN_name
  resource_group_name = var.RG_name
  
}
resource "azurerm_network_interface" "app_interface" {
  name                = var.NIC
  location            = var.location
  resource_group_name = var.RG_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet1.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }

}

resource "azurerm_windows_virtual_machine" "vm2" {
  name                = var.VM_name
  resource_group_name = var.RG_name
  location            = var.location
  size                = var.virtual_machine_size
  admin_username      = var.admin_username
  admin_password      = "Aniruth@2001"
  network_interface_ids = [
    azurerm_network_interface.app_interface.id,
  ]
  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  depends_on = [
    azurerm_network_interface.app_interface
  ]
}

