variable "location" {
  default = "northcentralus"
}

variable "tfcat_ca_name" {
  default = "tfcat-container-app"
}

variable "tfcat_ca_revision_mode" {
  default = "Multiple"
}

variable "tfcat_ca_ingress_allow_insecure_connections" {
  default = true
}

variable "tfcat_ca_ingress_external_enabled" {
  default = true
}

variable "tfcat_ca_ingress_target_port" {
  default = 80
}

variable "tfcat_ca_ingress_traffic_weight_latest_revision" {
  default = true
}

variable "tfcat_ca_ingress_traffic_weight_percentage" {
  default = 100
}

variable "tfcat_ca_template_container_cpu" {
  default = 0.25
}

variable "tfcat_ca_template_container_image" {
  default = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
}

variable "tfcat_ca_template_container_memory" {
  default = "0.5Gi"
}

variable "tfcat_ca_template_container_name" {
  default = "tfcat-container-app-template"
}

variable "tfcat_cae_name" {
  default = "tfcat-container-app-environment"
}

variable "tfcat_la_name" {
  default = "tfcat-log-analytics"
}

variable "tfcat_la_retention_in_days" {
  default = 30
}

variable "tfcat_la_sku" {
  default = "PerGB2018"
}

variable "tfcat_rg_name" {
  default = "tfcat-resource-group"
}