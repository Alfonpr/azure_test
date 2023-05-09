resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.username
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]
  custom_data = filebase64("scripts/ondeploy.sh")

  admin_ssh_key {
    username   = var.username
    public_key = file(var.ssh_public_key_path)
  }

  os_disk {
    caching              = var.vm_os_disk_caching
    storage_account_type = var.vm_os_disk_storage_type
  }

  source_image_reference {
    publisher = var.vm_image_publisher
    offer     = var.vm_image_offer
    sku       = var.vm_image_sku
    version   = var.vm_image_version
  }
}