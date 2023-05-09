output "url" {
  value = azurerm_container_app.tfcat_ca.ingress[0].fqdn
}