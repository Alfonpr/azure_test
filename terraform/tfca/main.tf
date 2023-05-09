resource "azurerm_resource_group" "tfcat_rg" {
  name     = var.tfcat_rg_name
  location = var.location
}