variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
#   default = "kubectl123"
  default = ""
}
variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
#   default = "1.23.15"
  default = ""
}
variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
#   default = 2
   
}
variable "acr_name" {
  type        = string
  description = "ACR name"
#   default = "acr20012903"
   default = ""

}

variable "RG_name" {
    type = string
    description = "Name of RG"
    # default = ""
}

variable "location" {
 type = string
 description = "Location"
#  default = "" 
}