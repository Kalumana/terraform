
variable "ambiente" {
  type = string
  description = "O ambiente em que está a trabalhar TEST ou PRD"
}

variable "keyvault_name" {
  type = string 
  default = "wordpress"
}


variable "resource_group_name" {
  type = string 
}

variable "resource_group_location" {
  type = string 
}