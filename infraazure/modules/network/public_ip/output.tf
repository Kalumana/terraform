

output "public_ip_name" {
    value = azurerm_public_ip.pip.name
}

output "public_ip_id" {
    value = azurerm_public_ip.pip.id
}

output "public_ip_address" {
    value = azurerm_public_ip.pip.ip_address
}

output "public_ip_fqdn" {
    value = azurerm_public_ip.pip.fqdn
}