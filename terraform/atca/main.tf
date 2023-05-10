resource "azurerm_resource_group" "atca_rg" {
  name     = var.atca_rg_name
  location = var.location
}