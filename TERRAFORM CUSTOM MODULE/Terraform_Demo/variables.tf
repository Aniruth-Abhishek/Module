variable "rgname" {
    type = string
    description = "Enter The RG name"
    default = "demorg123"
}
variable "loc" {
    type = string
    description = "Enter The Location"
    default = "east US"
}
variable "ipaddress" {
    type = list(string)
    description = "Enter The IP address"
     default = [ "10.0.0.0/16" ]
}
variable "vnname" {
    type = string
    description = "Enter VN name"
    default = "vndemo"
}
variable "subnetname" {
    type = string
    description = "Enter the Subnet Name"
    default = "demosn"
}
variable "ipsub" {
    type = list(string)
    description = "Enter the subnet ip address"
    default = [ "10.0.1.0/24" ]
}

variable "VM_name" {
  type = string
  default = "demovm"
  
}
variable "NIC" {
  type = string
  description = "NIC Name"
  default = "demonic"
}
variable "private_ip_address_allocation" {
  type = string
  description = "private_ip_address_allocation"
  default = "Dynamic"
}

variable "virtual_machine_size" {
  description = "The Virtual Machine SKU for the Virtual Machine, Default is Standard_A2_V2"
   default = "Standard_D2s_v3"
}
variable "admin_username" {
  description = "The username of the local administrator used for the Virtual Machine."
  default = "DemoUser123"
}
variable "os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values include Standard_LRS, StandardSSD_LRS and Premium_LRS."
  default = "Standard_LRS"
}

variable "os_disk_caching" {
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`"
  default = "ReadWrite"
}

variable "clname" {
  type = string
  description = "(optional) describe your variable"
  default = "kubectl123"
}
variable "kubver" {
  type = string
  description = "Kubernetes Version"
  default = "1.23.15"
}
variable "snc" {
  type = number
  description = "Enter The Number"
  default = 2
}

variable "acr" {
  type = string
  description = "Enter The ACR name"
  default = "acr20012903"
}

variable "Account_tier" {
  type = string
  description = "Enter the type of Account tier"
  default = "Standard"
}

variable "stname" {
  type = string
  description = "ENter the storage account name"
  default = "storageaccount20012903"
}
variable "account_replication_type" {
  type = string
  description = "Enter the Account replication type"
  default = "GRS"
}
