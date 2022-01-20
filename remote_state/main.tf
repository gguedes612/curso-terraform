terraform{
    backend "azurerm" {
      resource_group_name = "terraformstate"
      storage_account_name = "tftstate"
      container_name = "terraform"
      key = ""
    }
}

provider "azurerm" {
  features{

  }
}
resource "azurerm_resource_group" "rg_state" {
  name = "rg_terraform_state"
  location = "brazilsouth"
}