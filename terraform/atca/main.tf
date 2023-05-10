locals {
  atca_crt_docker_step_context_access_token = var.github_access_token
  atca_crt_docker_step_context_path         = "https://github.com/${var.github_username}/${var.github_project_name}#main"
}

resource "azurerm_resource_group" "atca_rg" {
  name     = var.atca_rg_name
  location = var.location
}