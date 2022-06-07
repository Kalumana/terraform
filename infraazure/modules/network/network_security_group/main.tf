
resource "azurerm_network_security_group" "sg" {
  name                = var.sg_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.ambiente
  }
}