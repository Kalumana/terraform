




module "resource_group" {
  source = "../modules/resource_group"

  ambiente = "TEST"
  rg_location = var.rg_location
  rg_name = var.rg_name

}

module "virtual_network" {
  source  = "../modules/network/virtual_network"

  ambiente = "TEST"
  vnet_name = var.vnet_name # Nome da virtual Network
  address_space = var.address_space
  address_prefix = var.address_prefix
  snet_name = var.snet_name # Nome da Subnet 
  dns_servers = var.dns_servers
  resource_group_location = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_location

}

module "subnet" {
  source = "../modules/network/subnet"

  ambiente = "TEST"
  snet_name = var.snet_name
  address_prefix = var.address_prefix
  resource_group_location = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_name
  virtual_network_name = module.virtual_network.vnet_name

  depends_on = [
    module.virtual_network
  ]
}


