output "NIC_out" {
  value = azurerm_network_interface.app_interface.name
}

output "VM_name_out" {
  value = azurerm_windows_virtual_machine.vm2.name
}