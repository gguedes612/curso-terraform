module "vm-linux" {
  source = "./module/vm-linux"

  resource_group_name          = var.resource_group_name
  vnet_name                    = var.vnet_name
  vnet_ip                      = var.vnet_ip
  subnet_name                  = var.subnet_name
  subnet_ip                    = var.subnet_ip
  interface_name               = var.interface_name
  interface_ip_name            = var.interface_ip_name
  interface_private_ip_type    = var.interface_private_ip_type
  interface_public_ip_type     = var.interface_public_ip_type
  interface_private_ip_address = var.interface_private_ip_address
  public_ip_name               = var.public_ip_name
  vm_name                      = var.vm_name
  vm_username                  = var.vm_username
  dns_domain                   = var.dns_domain
  dns_registro_name            = var.dns_registro_name
}
