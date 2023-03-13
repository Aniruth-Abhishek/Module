resource "azurerm_storage_account" "storage_account" {
  name                     = var.stname
  resource_group_name      = var.RG_name
  location                 = var.location
  account_tier             = var.Account_tier
  account_replication_type = var.account_type

  }
