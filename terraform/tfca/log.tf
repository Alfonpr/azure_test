resource "azurerm_log_analytics_workspace" "tfcat_la" {
  name                = var.tfcat_la_name
  location            = var.location
  resource_group_name = azurerm_resource_group.tfcat_rg.name
  sku                 = var.tfcat_la_sku
  retention_in_days   = var.tfcat_la_retention_in_days
}