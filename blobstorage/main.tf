provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "rgstorage" {
  name     = "rgstorage"
  location = "brazilsouth"
}

resource "azurerm_storage_account" "tfstorage" {
  name                     = "rgstorage"
  resource_group_name      = "rgstorage"
  location                 = "brazilsouth"
  account_tier             = "Standard"
  access_tier              = "Hot"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                 = "terraform"
  storage_account_name = azurerm_storage_account.tfstorage.name
  depends_on           = [azurerm_storage_account.tfstorage]
}

output "storage_account_key" {
  value     = azurerm_storage_account.tfstorage.primary_access_key
  sensitive = true
}