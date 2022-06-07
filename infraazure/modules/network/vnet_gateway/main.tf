


resource "azurerm_virtual_network_gateway" "vnetgw" {
  name                = "vnet_gw${var.vnet_gw_name}-${var.ambiente}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name 

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "VpnGw1"
  generation = "Generation1" 

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = var.public_ip_address_id
    private_ip_address_allocation = "Dynamic"
    subnet_id = var.subnet_id    
  }
    
    
}