resource "azurerm_network_interface" "nic" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  depends_on = [
    azurerm_network_security_group.secgroup
  ]

  ip_configuration {
    name                          = var.ip_config_network_interface_name
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = var.ip_config_network_interface_allocation
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }
}

resource "azurerm_network_security_group" "secgroup" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = var.network_security_group_rule_name
    priority                   = 100
    direction                  = var.network_security_group_rule_direction
    access                     = var.network_security_group_rule_access
    protocol                   = var.network_security_group_rule_protocol
    source_port_range          = "*"
    destination_port_range     = var.network_security_group_rule_port
    source_address_prefix      = "*"
    destination_address_prefix = azurerm_virtual_network.vnet.address_space.0
  }
}

resource "azurerm_network_interface_security_group_association" "NICSecGroupAssociation" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.secgroup.id
}