variable "location" {
  type = string
  description = "Localização dos Recursos do Azure."
  default = "brazilsouth"
}

variable "tags" {
  type = map
  description = "Tag nos recursos e serviços do azure"
  default = {
      ambiente = "desenvolvimento"
      responsavel = "Guilherme de Lima Guedes"
  }
}

variable "name-rg" {
  type = string
  description = "Nome do Resource Group"
  default = "rgvariable"
}

variable "vnet_address" {
    type = list
    default = ["10.0.0.0/16", "192.168.0.0/16"]
}