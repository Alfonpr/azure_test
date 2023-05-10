# This are variables needed
variable "github_access_token" {
  type = string
}

variable "github_project_name" {
  type = string
}

variable "github_username" {
  type = string
}

# This are variables given
variable "location" {
  default = "northcentralus"
}

variable "atca_ca_name" {
  default = "atca-container-app"
}

variable "atca_ca_revision_mode" {
  default = "Multiple"
}

variable "atca_ca_ingress_allow_insecure_connections" {
  default = true
}

variable "atca_ca_ingress_external_enabled" {
  default = true
}

variable "atca_ca_ingress_target_port" {
  default = 80
}

variable "atca_ca_ingress_traffic_weight_latest_revision" {
  default = true
}

variable "atca_ca_ingress_traffic_weight_percentage" {
  default = 100
}

variable "atca_ca_template_container_cpu" {
  default = 0.25
}

variable "atca_ca_template_container_image" {
  default = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
}

variable "atca_ca_template_container_memory" {
  default = "0.5Gi"
}

variable "atca_ca_template_container_name" {
  default = "atca-container-app-template"
}

variable "atca_cae_name" {
  default = "atca-container-app-environment"
}

variable "atca_cr_admin_enabled" {
  default = false
}

variable "atca_cr_name" {
  default = "atca-container-rregistry"
}

variable "atca_cr_sku" {
  default = "Basic"
}

variable "atca_crt_name" {
  default = "atca-container-registry-task"
}

variable "atca_crt_platform_os" {
  default = "Linux"
}

variable "atca_crt_docker_step_dockerfile_path" {
  # could be only dockerfile
  default = "app/Dockerfile"
}

variable "atca_la_name" {
  default = "atca-log-analytics"
}

variable "atca_la_retention_in_days" {
  default = 30
}

variable "atca_la_sku" {
  default = "PerGB2018"
}

variable "atca_rg_name" {
  default = "atca-resource-group"
}