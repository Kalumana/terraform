

output "keyvault_id" {
    value = azurerm_key_vault.keyvault.id
}

output "keyvault_access_policy" {
    value = azurerm_key_vault.keyvault.access_policy
}