#Variaveis globais

variable "tags" {
  type = string
  default = 
  description = "value"
}
variable "location" {
  type = string
  default = 
  description = "value"
}


#Variaveis resource group

variable "resource_group_name" {
  type = string
  default = 
  description = "value"
}


#Variaveis para vnet

variable "vnet_name" {
  type = string
  default = 
  description = "value"
}

variable "vnet_ip" {
  type = string
  default = 
  description = "value"
}


#Variaveis para subnet

variable "subnet_name" {
  type = string
  default = 
  description = "value"
}

variable "subnet_ip" {
  type = string
  default = 
  description = "value"
}


#Variaveis para interface de rede

variable "interface_name" {
  type = string
  default = 
  description = "value"
}


#Variaveis para ip da interface de rede
variable "interface_ip_name" {
  type = string
  default = 
  description = "value"
}

variable "interface_ip_type" {
  type = string
  default = 
  description = "value"
}

variable "interface_ip_address" {
  type = string
  default = 
  description = "value"
}


#Variaveis para maquina Virtual

variable "vm_name" {
  type = string
  default = 
  description = "value"
}
variable "vm_size" {
  type = string
  default = 
  description = "value"
}
variable "vm_username" {
  type = string
  default = 
  description = "value"
}


#Variaveis para disco da maquina Virtual

variable "vm_disk_caching" {
  type = string
  default = 
  description = "value"
}

variable "vm_disk_storage_type" {
  type = string
  default = 
  description = "value"
}



#Variaveis para imagem da maquina virtual

variable "vm_image_sku" {
  type = string
  default = 
  description = 
}

variable "vm_image_offer" {
    type = string
    default = 
    description = 
}

variable "vm_image_version" {
  type = string
  default = 
  description = 
}