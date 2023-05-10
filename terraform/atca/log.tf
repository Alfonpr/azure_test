resource "azurerm_log_analytics_workspace" "atca_la" {
  name                = var.atca_la_name
  location            = var.location
  resource_group_name = azurerm_resource_group.atca_rg.name
  sku                 = var.atca_la_sku
  retention_in_days   = var.atca_la_retention_in_days
}