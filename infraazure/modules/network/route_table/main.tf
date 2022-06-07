
resource "azurerm_route_table" "rt" {
  name                          = "route-table${var.rt_name}-${var.ambiente}"
  location                      = var.resource_group_location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = false

  route {
    name           = "azure-to-aws"
    address_prefix = var.address_prefix # Ip da virtual Network de destino
    next_hop_type = "VnetLocal"

  }
  tags = {
    environment = var.ambiente
  }
}