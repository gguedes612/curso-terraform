#Variaveis resource group

variable "resource_group_name" {
  type = string
  description = "Nome do resource group"
  default = "RG_Minecraft_Server"
}


#Variaveis para vnet

variable "vnet_name" {
  type = string
  description = "Nome para virtual network"
  default = "VNET_Minecraft_Server"
}

variable "vnet_ip" {
  type = list(string)
  description = "Lista de ranges de IP's para a virtual network"
  default = [
      "10.0.0.0/16"
  ]
}


#Variaveis para subnet

variable "subnet_name" {
  type = string
  description = "Nome para a subnet"
  default = "SUBNET_Minecraft_Server"
}

variable "subnet_ip" {
  type = list(string)
  description = "Prefixos de redes a serem passados para a subnet"
  default = [ "10.0.2.0/24" ]
}

#Variaveis para interface de rede

variable "interface_name" {
  type = string
  description = "Nome da interface da maquina virtual"
  default = "NIC_Minecraft_Server"
}

variable "interface_ip_name" {
  type = string
  description = "Nome para a configuração de IP da interface"
  default = "IP_Minecraft_Server"
}

variable "interface_private_ip_type" {
  type = string
  description = "Tipo de IP privado para a interface (Dynamic ou Static)"
  default = "Dynamic"
}

variable "interface_public_ip_type" {
  type = string
  description = "Tipo de IP public para a interface (Dynamic ou Static)"
  default = "Static"
}

variable "interface_private_ip_address" {
  type = string
  description = "Endereço IP privado para a interface"
  default = null
}

variable "public_ip_name" {
  type = string
  description = "Endereço IP privado para a interface"
  default = "Public_IP_Minecraft-Server"
}

#Variaveis para maquina Virtual

variable "vm_name" {
  type = string
  description = "Nome para a maquina virtual"
  default = "VM-Minecraft-Server"
}

variable "vm_username" {
  type = string
  description = "Nome de usuario para o administrador local"
  default = "minecraft"
}

#Variaveis DNS

variable "dns_domain"{
  type = string
  description = "Dominio para o DNS"
  default = "guilhermeguedes.com.br"
}

variable "dns_registro_name" {
  type = string
  description = "Nome do registro do servidor"
  default = "minecraft"
}
