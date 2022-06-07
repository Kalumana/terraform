

variable "vnet_name" {
  description = "Nome dos recursos"
  type = string
  
}

variable "snet_name" {
  description = "Nome dos recursos"
  type = string
  
}

variable "address_space" {
  description = "Ips disponivel para Vnet"
  type = list(string)

}

variable "address_prefix" {
  description = "Ips disponivel para Subnet"
  type =list
 
}

variable "ambiente" {
  type = string
  description = "O ambiente em que está a trabalhar TEST ou PRD"
}

variable "count_resourse" {
  type = number 
  default = 1
}

variable "dns_servers" {
  type = list(string) 
  
}

variable "resource_group_name" {
  type = string 
}

variable "resource_group_location" {
  type = string 
}