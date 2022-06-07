
variable "loc_gw_name" {
  description = "Ip gateway da Infra de Destino"
  type = string
}

variable "address_space_gateway" {
  description = "Espaço de endereço da Infra de destino"
  type = list(string)

}

variable "gateway_address" {
  description = "IP do gatway do endereço de destino"
  type = string
  
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