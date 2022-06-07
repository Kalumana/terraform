
variable "nic_name" {
  description = "Ip gateway da Infra de Destino"
  type = string
}

variable "public_ip_address_id" {
  type = string
  description = "Public ip Id"
}

variable "private_ip_address" {
  type = string
  description = "Private ip Id"
  
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