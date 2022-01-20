


resource "azurerm_resource_group" "rg" {
  name = "appservice-${var.ambiente}"
  location = var.location
}

resource "azurerm_app_service_plan" "plan" {
  name = "appserviceplan-${var.ambiente}"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
      tier = "Startdard"
      size = "S1"
  }
}
resource "azurerm_app_service" "appservice" {
  name = "tfappservice-${var.ambiente}"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id
  site_config {
    dotnet_framework_version = "v4.0"
  }

  app_settings = {
      "chave" = "12345"
  }
}