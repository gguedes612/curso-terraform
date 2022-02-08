#Variaveis globais

variable "tags" {
  type = map(string)
  default = {
    Owner = "Guilherme de Lima Guedes"
    Enviroment = "HMLG"
    Application = "Minecraft-Server"
  }
  description = "Tags dos recursos a serem criados"
}
variable "location" {
  type = string
  default = "brazilsouth"
  description = "Location dos recursos a serem criados"
}


#Variaveis resource group

variable "resource_group_name" {
  type = string
  description = "Nome do resource group"
}


#Variaveis para vnet

variable "vnet_name" {
  type = string
  description = "Nome para virtual network"
}

variable "vnet_ip" {
  type = list(string)
  description = "Lista de ranges de IP's para a virtual network"
}


#Variaveis para subnet

variable "subnet_name" {
  type = string
  description = "Nome para a subnet"
}

variable "subnet_ip" {
  type = list(string)
  description = "Prefixos de redes a serem passados para a subnet"
}


#Variaveis para interface de rede

variable "interface_name" {
  type = string
  description = "Nome da interface da maquina virtual"
}

#Variaveis para ip privado da interface de rede

variable "interface_ip_name" {
  type = string
  description = "Nome da configuração de ip da interface"
}

variable "interface_private_ip_type" {
  type = string
  description = "Tipo de IP privado para a interface (Dynamic ou Static)"
  default = "Dynamic"
}

variable "interface_public_ip_type" {
  type = string
  description = "Tipo de IP public para a interface (Dynamic ou Static)"
  default = "Dynamic"
}

variable "interface_private_ip_address" {
  type = string
  description = "Endereço IP privado para a interface"
  default = "null"
}

variable "public_ip_name" {
  type = string
  description = "Endereço IP privado para a interface"
  default = "Public_IP_Server"
}


#Variaveis para maquina Virtual

variable "vm_name" {
  type = string
  description = "Nome para a maquina virtual"
}

variable "vm_size" {
  type = string
  default = "Standard_F2"
  description = "SKU usado para a maquina virtual"
}

variable "vm_username" {
  type = string
  description = "Nome de usuario para o administrador local"
  default = "Server"
}

variable "vm_password" {
  type = string
  default = "Password@123#"
  description = "Senha de autenticação"
}

variable "vm_disable_password_authentication" {
  type = string
  default = "false"
  description = "Habilita ou não autenticação na VM"
}


#Variaveis para disco da maquina Virtual

variable "vm_disk_caching" {
  type = string
  default = "ReadWrite"
  description = "Tipo de cache a ser usado para o disco (None, ReadOnly, ReadWrite)"
}

variable "vm_disk_storage_type" {
  type = string
  default = "Standard_LRS"
  description = "Tipo de conta de armazenamento para o disco"
}



#Variaveis para imagem da maquina virtual

variable "vm_image_publisher" {
  type = string
  default = "Canonical"
  description = "Publisher da imagem"
}

variable "vm_image_offer" {
    type = string
    default = "UbuntuServer"
    description = "Oferta de imagem"
}

variable "vm_image_sku" {
  type = string
  default = "16.04-LTS"
  description = "SKU da imagem a ser criada"
}

variable "vm_image_version" {
  type = string
  default = "latest"
  description = "Versão da imagem"
}

#Variaveis DNS

variable "dns_domain"{
  type = string
  description = "Dominio para o DNS"
}

variable "dns_registro_name" {
  type = string
  description = "Nome do registro do servidor"
}

variable "dns_ttl" {
  type = number
  description = "Tempo de vida do registro em segundos"
  default = 300
}
