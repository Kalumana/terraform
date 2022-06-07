
output "local_network_gateway_id" {
    value = azurerm_local_network_gateway.LocalGw.id
}

output "local_network_gateway_fqdn" {
    value = azurerm_local_network_gateway.LocalGw.gateway_fqdn
}