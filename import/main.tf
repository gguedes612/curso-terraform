provider "azurerm" {
  features{}
  }

resource "azurerm_resource_group" "rg" {
  name = "rg-terraform-import"
  location = "brazilsouth"
}

#terraform import azurerm_resource_group.rg /subscriptions/ccd48fc6-ba81-4531-8ed0-6b690c770d65/resourceGroups/rg-terraform-import


resource "azurerm_virtual_network" "vnet" {
  name = "vnet-import"
  resource_group_name = "rg-terraform-import"
  address_space = ["10.0.0.0/16", "192.168.0.0/16"]
  tags = {
      "ambiente" = "Desenvolvimenteo"
  }
  location = "brazilsouth"
}

#terraform import azurerm_virtual_network.vnet /subscriptions/ccd48fc6-ba81-4531-8ed0-6b690c770d65/resourceGroups/rg-terraform-import/providers/Microsoft.Network/virtualNetworks/vnet-import

resource "azurerm_network_security_group" "nsg" {
  name = "nsg"
  resource_group_name = "rg-terraform-import"
  
}