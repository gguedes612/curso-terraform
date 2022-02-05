variable "resource_group_name" {
  type  = string
  description = "Este campo define o nome do Resource Group"
  default = "live_azure_na_pratica"
  sensitive = false
}

variable "location" {
  type = string
  description = "Este campo define o location do Resource Group."
  default = "brazilsouth"
}

variable "tags" {
  type = map(any)
  description = "Este campo define as tagws do Resource Group."
  default = {}
}