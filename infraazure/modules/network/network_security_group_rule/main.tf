
resource "azurerm_network_security_rule" "sg_rule" {
  count = var.count_resourse 
  for_each = var.regras_entrada
  name                        = "${var.sg_rule_name}-${var.ambiente}"
  priority                    = each.value
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = each.value
  destination_port_range      = each.value
  source_address_prefix       = var.source_address_prefix
  destination_address_prefix  = var.destination_address_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.sg_name
}


