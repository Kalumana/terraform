

output "vnet_gateway_connection_id" {
    value = azurerm_virtual_network_gateway_connection.connect-to.id
}

output "vnet_gateway_connetion_authorization_key" {
    value = azurerm_virtual_network_gateway_connection.connect-to.authorization_key
}