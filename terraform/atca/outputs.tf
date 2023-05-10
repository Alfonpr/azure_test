output "url" {
  value = azurerm_container_app.atca_ca.ingress[0].fqdn
}