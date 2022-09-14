

resource "azurerm_resource_group" "consulnetworkautomation" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./network"
  resource_group_name = var.resource_group_name
  location = var.location
  owner = var.owner
    depends_on = [
    azurerm_resource_group.consulnetworkautomation
  ]
}
module "sharedservices" {
  source           = "./sharedservices"
  resource_group_name = var.resource_group_name
  location = var.location
  owner = var.owner
  boundary_subnet     = module.network.shared_network_subnets[0]
  vault_subnet     = module.network.shared_network_subnets[1]
  consul_subnet = module.network.shared_network_subnets[2]
  depends_on = [
    azurerm_resource_group.consulnetworkautomation
  ]
}

module "loadbalancer" {
  source = "./loadbalancer"
  resource_group_name = var.resource_group_name
  location = var.location
  owner = var.owner
  web_subnet     = module.network.app_network_subnets[0]
  app_subnet     = module.network.app_network_subnets[1]
  db_subnet     = module.network.app_network_subnets[2]
  depends_on = [
    azurerm_resource_group.consulnetworkautomation
  ]
}

