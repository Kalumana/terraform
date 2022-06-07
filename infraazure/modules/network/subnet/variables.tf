



variable "snet_name" {
  description = "Nome dos recursos"
  type = string
}


variable "address_prefix" {
  description = "Ips disponivel para Subnet"
  type = list
  
}

variable "ambiente" {
  type = string
  description = "O ambiente em que está a trabalhar TEST ou PRD"
}


variable "resource_group_name" {
  type = string 
}

variable "resource_group_location" {
  type = string 
}

variable "virtual_network_name" {
  type = string 
}
