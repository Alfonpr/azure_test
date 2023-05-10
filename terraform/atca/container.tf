resource "azurerm_container_app_environment" "atca_cae" {
  name                       = var.atca_cae_name
  location                   = var.location
  resource_group_name        = azurerm_resource_group.atca_rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.atca_la.id
}
resource "azurerm_container_app" "atca_ca" {
  name                         = var.atca_ca_name
  container_app_environment_id = azurerm_container_app_environment.atca_cae.id
  resource_group_name          = azurerm_resource_group.atca_rg.name
  revision_mode                = var.atca_ca_revision_mode

  ingress {
    allow_insecure_connections = var.atca_ca_ingress_allow_insecure_connections
    external_enabled           = var.atca_ca_ingress_external_enabled
    target_port                = var.atca_ca_ingress_target_port
    traffic_weight {
      latest_revision = var.atca_ca_ingress_traffic_weight_latest_revision
      percentage      = var.atca_ca_ingress_traffic_weight_percentage
    }
  }

  template {
    container {
      name   = var.atca_ca_template_container_name
      image  = var.atca_ca_template_container_image
      cpu    = var.atca_ca_template_container_cpu
      memory = var.atca_ca_template_container_memory
    }
  }
}