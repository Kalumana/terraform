


resource "azurerm_public_ip" "pip" {
  name                    = "pip-${var.pip_name}"
  location                = var.resource_group_location
  resource_group_name     = var.resource_group_name
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = 30
  domain_name_label       = "connect-to-infra" 

  tags = {
    "ambiente" = var.ambiente
  }
}