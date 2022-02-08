provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "rg_minecraft_server" {
  name = var.resource_group_name
  location = var.location
  tags = var.tags
}

resource "azurerm_virtual_network" "vnet_micraft_server" {
  resource_group_name = var.resource_group_name
  name = var.vnet_name
  address_space = var.vnet_ip
  location = var.location
  tags = var.tags

  depends_on = [
    azurerm_resource_group.rg_minecraft_server
  ]
}

resource "azurerm_subnet" "subnet_minecraft_server" {
  resource_group_name = var.resource_group_name
  virtual_network_name = var.vnet_name
  name = var.subnet_name
  address_prefixes = var.subnet_ip

  depends_on = [
    azurerm_resource_group.rg_minecraft_server,
    azurerm_virtual_network.vnet_micraft_server,
  ]
}

resource "azurerm_network_interface" "interface_minecraft_server" {
  name = var.interface_name
  location = var.location
  resource_group_name = var.resource_group_name
  
  ip_configuration {
    name = var.interface_ip_name
    subnet_id = azurerm_subnet.subnet_minecraft_server.id
    private_ip_address_allocation = var.interface_ip_type
    private_ip_address = var.interface_ip_address
  }
  
  depends_on = [
    azurerm_resource_group.rg_minecraft_server,
    azurerm_virtual_network.vnet_micraft_server,
    azurerm_subnet.subnet_minecraft_server,
  ]

}

resource "azurerm_linux_virtual_machine" "vm_minecraft_server" {
  name = var.vm_name
  resource_group_name = var.resource_group_name
  location = var.location
  size = var.vm_size
  admin_username = var.vm_username
  admin_password = var.vm_password
  network_interface_ids = [azurerm_network_interface.interface_minecraft_server.id]
  disable_password_authentication = var.vm_disable_password_authentication
  
  os_disk {
    caching = var.vm_disk_caching
    storage_account_type = var.vm_disk_storage_type
  }

  source_image_reference {
    publisher = var.vm_image_publisher
    offer = var.vm_image_offer
    sku = var.vm_image_sku
    version = var.vm_image_version
  }

  depends_on = [
    azurerm_resource_group.rg_minecraft_server,
    azurerm_virtual_network.vnet_micraft_server,
    azurerm_subnet.subnet_minecraft_server,
    azurerm_network_interface.interface_minecraft_server,
  ]
}