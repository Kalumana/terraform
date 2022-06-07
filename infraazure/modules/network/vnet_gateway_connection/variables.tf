


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

variable "shared_key" {
  description = "Está é a chave disponiblizada pela infra em que queremos nos conectar"
  type = string
}

variable "vnet_gw_connect_name" {
  type = string
  description ="Nome  de conecção"
  default = "connect-to"
}