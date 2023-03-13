terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }
}


provider "azurerm" {
 subscription_id = "5e40608f-6cab-4fed-a8d2-b40cfb25136a"
  client_id = "284c4aea-2210-4bac-aee0-6cf2ed6b70d6"
  tenant_id = "12f7d2da-1443-49a0-9603-13c2363c478d"
  client_secret = "vqX8Q~LtpBxDcHQZ73lim4z7BR~-_mc8JnWoFaHD"
  features {}
}