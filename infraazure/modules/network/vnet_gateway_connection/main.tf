


resource "azurerm_virtual_network_gateway_connection" "connect-to" {
  name                = "${var.vnet_gw_connect_name}-aws"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  type                       = "IPsec"
  virtual_network_gateway_id = var.virtual_network_gateway_id 
  local_network_gateway_id   = var.local_network_gateway_id

  shared_key = var.shared_key

  tags = {
    "ambiente" = var.ambiente
  }
}