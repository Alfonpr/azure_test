resource "azurerm_container_app_environment" "tfcat_cae" {
  name                       = var.tfcat_cae_name
  location                   = var.location
  resource_group_name        = azurerm_resource_group.tfcat_rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.tfcat_la.id
}
resource "azurerm_container_app" "tfcat_ca" {
  name                         = var.tfcat_ca_name
  container_app_environment_id = azurerm_container_app_environment.tfcat_cae.id
  resource_group_name          = azurerm_resource_group.tfcat_rg.name
  revision_mode                = var.tfcat_ca_revision_mode

  ingress {
    allow_insecure_connections = var.tfcat_ca_ingress_allow_insecure_connections
    external_enabled           = var.tfcat_ca_ingress_external_enabled
    target_port                = var.tfcat_ca_ingress_target_port
    traffic_weight {
      latest_revision = var.tfcat_ca_ingress_traffic_weight_latest_revision
      percentage      = var.tfcat_ca_ingress_traffic_weight_percentage
    }
  }

  template {
    container {
      name   = var.tfcat_ca_template_container_name
      image  = var.tfcat_ca_template_container_image
      cpu    = var.tfcat_ca_template_container_cpu
      memory = var.tfcat_ca_template_container_memory
    }
  }
}