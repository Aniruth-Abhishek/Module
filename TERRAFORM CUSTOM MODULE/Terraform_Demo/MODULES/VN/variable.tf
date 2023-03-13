variable "RG_name" {
    type = string
    description = "Name of RG"
}

variable "location" {
 type = string
 description = "Location" 
}

variable "VN_name" {
    type = string
    description = "Name of the Virtual Machine"
    # default = "demoVN"
}
  

variable "address_spaces" {
  description = "The list of the address spaces that is used by the virtual network."
  type        = list(string)
  default     = [""]
}


variable "subnet_name" {
    type = string
    description = "enter the subnet name"
    # default = "subnet2"
}
variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
#   default     = ["10.0.1.0/24"]
}