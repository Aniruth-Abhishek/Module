resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.RG_name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = false
  
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = var.location
  dns_prefix          = var.cluster_name
  resource_group_name = var.RG_name


  default_node_pool {
    name                = "system"
    node_count          = var.system_node_count
    vm_size             = "Standard_DS2_v2"
    type                = "VirtualMachineScaleSets"
    #availability_zones  = var.avail_zone
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "basic"
    network_plugin    = "kubenet" 
  }
  depends_on = [
    azurerm_container_registry.acr
  ]
}