variable "stname" {
    type = string
    description = "enter name"
    #default = "storageaccount20012903"
}

variable "account_type" {
    type = string
    description = "Enter LRS or GRS"
    
}

variable "Account_tier" {
    type = string
    description = "Account tier"
   # default = "Standard"
}
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
