
variable "count_resourse" {
  type = number 
  default = 1
}

variable "ambiente" {
  type = string
}

variable "owner" {
  type = string
  default = "António Kalumana"

}

#### Resource Group ######

variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
 
}


###### Virtual network  ######
variable "vnet_name" {
  description = "Nome da Virtual network"
  type = string
  
}
variable "address_space" {
  description = "Ips disponivel para Vnet"
  type = list(string)
  
}
variable "dns_servers" {
  type = list(string) 

}

variable "address_prefix_vnet_associated" {
  type = list

}


#### Subnet ###########
variable "snet_name" {
  description = "Nome dos recursos"
  type = string
  
}
variable "address_prefix" {
  description = "Ips disponivel para Subnet"
  type = list
  
}


###### Security Group #########
variable "sg_name" {
  type = string
  description = "Nome do Security Group"
}

###### Security Group Rule #########
variable "sg_rule_name" {
  description = "Nome dos recursos"
  type = string
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


###### Local gateway #########
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


###### Vnet Gateway #########

variable "vnet_gw_name" {
  description = "Ip gateway da Infra de Destino"
  type = string
}


## Vnet Gateway Connection#####

variable "shared_key" {
  description = "Está é a chave disponiblizada pela infra em que queremos nos conectar"
  type = string
}

variable "vnet_gw_connect_name" {
  type = string
  description ="Nome  de conecção"
  default = "connect-to"
}


## PubliC Ip#####

variable "pip_name" {
  description = "Nome do ip Público"
  type = string
}


### Network Interface #####

variable "nic_name" {
  description = "Ip gateway da Infra de Destino"
  type = string
}

variable "private_ip_address" {
  type = string
  description = "Private ip Id"
  
}

/*
#############Virtual Machine Windows 2016 ###############

variable "name" {
  type =string
  description = "Nome da VM"
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
*/