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

#Variaveis para disco da maquina Virtu

#Variaveis para interface de rede

variable "interface_name" {
  type = string
  description = "Nome para a interface de rede"
  default = "NIC_Minecraft_Server"
}


#Variaveis para ip da interface de rede
variable "interface_ip_name" {
  type = string
  description = "Nome para a configuração de IP da interface"
  default = "Private_IP_Minecraft_Server"
}

variable "interface_ip_type" {
  type = string
  description = "Tipo de IP privado para a interface (Dynamic ou Static)"
  default = "Static"
}

variable "interface_ip_address" {
  type = string
  description = "Endereço IP privado para a interface"
  default = "10.0.2.1"
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
