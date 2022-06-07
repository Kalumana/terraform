


resource "azurerm_local_network_gateway" "LocalGw" {
  name                = "gw_destino-${var.loc_gw_name}"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  gateway_address     = var.gateway_address
  address_space       = var.address_space_gateway
}