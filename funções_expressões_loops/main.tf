provider "azurerm" {
    features{

    }
}

resource "azurerm_resource_group" "grupo_recurso" {
  count = 5
  location = "brazilsouth"
  name = "resource_group_modulo_${count.index}"
  tags = {
    "data" = formatdate("DD MMM YYYY", timestamp())
    "ambiente" = lower("Homologação")
    "responsavel" = upper("Guilherme de Lima Guedes")
    "tecnologia" = title("terraform")
  }
}

variable "vnet_ips" {
  type = list
  default = ["10.0.0.0/16"]
}


resource "azurerm_virtual_network" "vnet1" {
  name = "vnet1"
  location = "brazilsouth"
  resource_group_name = "resource_group_modulo_5"
  address_space = concat(var.vnet_ips, ["192.168.0.0/16"])
}

resource "azurerm_virtual_network" "vnet2" {
  name = "vnet2"
  location = "brazilsouth"
  resource_group_name = "resource_group_modulo_5"
  address_space = length(var.vnet_ips) == 1 ? ["10.0.0.0/24","192.168.0.0/24"] : var.vnet_ips
}

output "vnet_valores" {
  value = length("${azurerm_virtual_network.vnet1.address_space}")
}