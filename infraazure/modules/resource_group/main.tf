


resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.rg_name}-${var.ambiente}"
  location = var.rg_location

  tags = {
    "owner" = var.owner
  }
}
