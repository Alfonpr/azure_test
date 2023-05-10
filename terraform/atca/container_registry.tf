/*
resource "azurerm_container_registry" "atca_cr" {
  name                = var.atca_cr_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = var.atca_cr_sku
  admin_enabled       = vat.atca_cr_admin_enabled
}

resource "azurerm_container_registry_task" "atca_crt" {
  name                  = var.atca_crt_name
  container_registry_id = azurerm_container_registry.atca_cr.id
  platform {
    os = var.atca_crt_platform_os
  }
  docker_step {
    dockerfile_path      = var.atca_crt_docker_step_dockerfile_path
    context_path         = var.atca_crt_docker_step_context_path
    context_access_token = var.atca_crt_docker_step_context_access_token
  }
}
*/