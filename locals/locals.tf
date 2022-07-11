locals {
  tags = {
    owner = "Guilherme Guedes"
    env   = "Production"
    team  = "Avengers"
  }
}

resource "azurerm_resource_group" "main" {
  name = "teste"
  tags = local.tags #Singular
}
