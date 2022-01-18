provider "azurerm" {
  features{
  }
}

resource "azurerm_resource_group" "grupo_recurso" {
  name = "rgterraform"
  location = "brazilsouth"
}