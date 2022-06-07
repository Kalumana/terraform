


resource "azurerm_windows_virtual_machine" "vm" {
  name                = "${var.name}-vm"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location 
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
   var.network_interface_ids,
  ]

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher #"MicrosoftWindowsServer"
    offer     = var.offer #"MicrosoftWindowsServer"
    sku       = var.sku #"2016-Datacenter"
    version   = var.version #"latest"
  }
}