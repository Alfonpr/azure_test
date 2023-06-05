variable "resource_group_name" {
  default = "TFTest"
}

variable "location" {
  default = "northcentralus"
}

variable "vnet_name" {
  default = "TFTestVNet"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  default = "TFTestSubNet"
}

variable "subnet_address_prefixes" {
  default = ["10.0.2.0/24"]
}

variable "network_interface_name" {
  default = "TFTestNIC"
}

variable "ip_config_network_interface_name" {
  default = "TFTestIPConfigNIC"
}

variable "ip_config_network_interface_allocation" {
  default = "Dynamic"
}

variable "network_security_group_name" {
  default = "TFTestSecGroup"
}

variable "network_security_group_rule_name" {
  default = "TFTestSecRule"
}

variable "network_security_group_rule_direction" {
  default = "Inbound"
}

variable "network_security_group_rule_access" {
  default = "Allow"
}

variable "network_security_group_rule_protocol" {
  default = "Tcp"
}

variable "network_security_group_rule_port" {
  default = "22"
}

variable "public_ip_name" {
  default = "TFTestPublicIP"
}

variable "public_ip_allocation_method" {
  default = "Dynamic"
}

variable "vm_name" {
  default = "TFTestVM"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "vm_os_disk_caching" {
  default = "ReadWrite"
}

variable "vm_os_disk_storage_type" {
  default = "Standard_LRS"
}

variable "vm_image_publisher" {
  default = "Canonical"
}

variable "vm_image_offer" {
  default = "UbuntuServer"
}

variable "vm_image_sku" {
  default = "18_04-lts-gen2"
}

variable "vm_image_version" {
  default = "latest"
}

variable "username" {
  default = "azureuser"
}

variable "ssh_public_key" {
}

variable "tags" {
  default = {
    "Environment" : "Terraform Getting Started"
    "Team" : "DevOps"
  }
}