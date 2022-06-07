



variable "sg_rule_name" {
  description = "Nome dos recursos"
  type = string
}

variable "sg_name" {
  description = "Nome dos recursos"
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

variable "virtual_network_name" {
  type = string 
}

variable "count_resourse" {
  type = number 
  default = 1
}


variable "regras_entrada" {
  description = "As portas de entradas permitidas para um respetivo security Group"
  type = map(any)
}

variable "regras_saida" {
  description = "As portas de saida permitidas para um respetivo security Group"
  type = map(any)
}

variable "source_address_prefix" {
  description = "Endereço do ip de origem "
  type = string
  default = "*"
  
}

variable "destination_address_prefix" {
  description = "Endereço do ip de destino "
  type = string
  default = "*"
  
}
