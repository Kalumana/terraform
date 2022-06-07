
variable "ambiente" {
  type = string
  description = "O ambiente em que está a trabalhar TEST ou PRD"
}

variable "vnet_gw_name" {
  description = "Ip gateway da Infra de Destino"
  type = string
}

variable "public_ip_address_id" {
  description = " id do endereço publico"
  type = string
}

variable "subnet_id" {
  description = "id da Subnet"
  type = string
}

variable "Vnet_gw_type" {
  type = string
}

variable "vnet_gw_vpn_type" {
  type = string
}

variable "Vnet_gw_sku" {
  type = string
}

variable "ip_configuration_name" {
  type = string
}

variable "vnet_gw_private_ip_address_id" {
  type = string
}



variable "resource_group_name" {
  type = string 
}

variable "resource_group_location" {
  type = string 
}