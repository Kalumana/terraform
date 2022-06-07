
variable "ambiente" {
  type = string
  description = "O ambiente em que está a trabalhar TEST ou PRD"
}

variable "name" {
  type =string
  description = "Nome dos recursos"
}

variable "size" {
  type = string
  description = "The SKU which should be used for this Virtual Machine"
  default = "Standard_F2"
}
variable "admin_info" {
  description = "Informações sobre o administrador da virtual machine"
  type = object ({
    admin_username = string
    admin_password = string
  })
  sensitive = true 
}

variable "network_interface_ids" {
  description = "id da iterface de rede"
  type = string
  
}

variable "os_disk_info" {
  description = "informações sobre o disco do S.O"
  type = object ({
    caching = string
    storage_account_type = string
  })
  
}
 
variable "source_image_reference_info" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}


variable "resource_group_name" {
  type = string 
}

variable "resource_group_location" {
  type = string 
}