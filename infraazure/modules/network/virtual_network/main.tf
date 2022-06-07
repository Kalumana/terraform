


resource "azurerm_virtual_network" "vnet" {
 
  name                       = "vnet${var.vnet_name}-${var.ambiente}"
  location                   = var.resource_group_location
  resource_group_name        = var.resource_group_name
  address_space              = ["192.168.0.0/24"]
  dns_servers                = var.dns_servers

  subnet {
    name           = "snet-${var.snet_name}-${var.ambiente}"
    address_prefix = "192.168.0.0/24"
  }


  tags = {
    environment = var.ambiente
  }
   
}