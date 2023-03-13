variable "RG_name" {
    type = string
    description = "Name of RG"
    default = ""
}

variable "location" {
 type = string
 description = "Location"
 default = "" 
}

variable "VN_name" {
    type = string
    description = "Name of the Virtual Machine"
    default = ""
    # default = "demoVN"
}
variable "subnet_name" {
    type = string
    description = "enter the subnet name"
    default = ""
    # default = "subnet2"
}
variable "VM_name" {
  type = string
  description = "Virtual machine name"
#   default = "vm2"
default = ""
}

variable "NIC" {
  type = string
  description = "NIC Name"
#   default = "NetworkInterface2"
default = ""
}

variable "private_ip_address_allocation" {
  type = string
  description = "private_ip_address_allocation"
#   default = "Dynamic"
    default = ""
}
variable "virtual_machine_size" {
  description = "The Virtual Machine SKU for the Virtual Machine, Default is Standard_A2_V2"
#   default     = "Standard_D2s_v3"
   default = ""
}
variable "admin_username" {
  description = "The username of the local administrator used for the Virtual Machine."
#   default     = "DemoUserAniruth"
  default = ""
}
variable "os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values include Standard_LRS, StandardSSD_LRS and Premium_LRS."
#   default     = "Standard_LRS"
  default = ""
}

variable "os_disk_caching" {
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`"
#   default     = "ReadWrite"
   default = ""
}

variable "windows_distribution_list" {
  description = "Pre-defined Azure Windows VM images list"
  type = map(object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  }))

  default = {
      windows2019dccore = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2019-Datacenter-Core"
      version   = "latest"
    },
  }
}