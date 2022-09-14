
module "shared-network" {
  source              = "Azure/network/azurerm"
  vnet_name           = "shared-network"
  resource_group_name = var.resource_group_name
  address_space       = "10.2.0.0/16"
  subnet_prefixes     = ["10.2.0.0/24", "10.2.1.0/24", "10.2.2.0/24"]
  subnet_names        = ["Vault", "F5", "Boundary"]

  tags = {
    owner = var.owner
  }
}

