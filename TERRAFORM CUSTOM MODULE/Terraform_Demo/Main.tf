module "Resource_group" {
    source = "./MODULES/RG"
    RG_name = var.rgname
    location = var.loc
}
module "storage_account" {
  source = "./MODULES/StorageAccount"
  stname = var.stname
  account_type = var.account_replication_type
  Account_tier = var.Account_tier
  RG_name = module.Resource_group.RG_Out
  location = module.Resource_group.loc_out
}
module "Virtual_network" {
    source = "./MODULES/VN"
    RG_name = module.Resource_group.RG_Out
    location = module.Resource_group.loc_out
    VN_name = var.vnname
    address_spaces = var.ipaddress
    subnet_name = var.subnetname
    subnet_prefixes = var.ipsub
    depends_on = [
      module.Resource_group
    ]
}
module "virtual_machine" {
    source = "./MODULES/VM"
    RG_name = module.Resource_group.RG_Out
    location = module.Resource_group.loc_out
    VN_name = module.Virtual_network.VN_name_out
    VM_name = var.VM_name
    subnet_name = module.Virtual_network.subnet_name_out
    NIC = var.NIC
    private_ip_address_allocation = var.private_ip_address_allocation
    virtual_machine_size = var.virtual_machine_size
    admin_username = var.admin_username
    os_disk_storage_account_type = var.os_disk_storage_account_type
    os_disk_caching = var.os_disk_caching
    depends_on = [
      module.Virtual_network
    ]
}

module "AKS" {
    source = "./MODULES/AKS"
    cluster_name = var.clname
    kubernetes_version = var.kubver
    system_node_count = var.snc
    acr_name = var.acr
    RG_name = module.Resource_group.RG_Out
    location = module.Resource_group.loc_out
    depends_on = [
      module.Resource_group
    ]
}

    
