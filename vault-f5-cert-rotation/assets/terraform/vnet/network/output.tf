
output "shared_network_vnet" {
  value = module.shared-network.vnet_id
}

output "shared_network_subnets" {
  value = module.shared-network.vnet_subnets
}