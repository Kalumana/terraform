


resource "azurerm_network_interface" "nic" {
  name                = "nic-${var.rg_name}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    private_ip_address_version = "IPv4"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Static"
    private_ip_address = var.private_ip_address
    public_ip_address_id = var.public_ip_address_id
  }
}