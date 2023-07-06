module "naming" {
    source  = "Azure/naming/azurerm"
    version = "0.3.0"
}

resource "azurerm_resource_group" "provider" {
    location = "UK South"
    name = module.naming.resource_group.name
}

resource "azurerm_virtual_network" "provider" {
    address_space = [ "10.0.0.0/16" ]
    location = "UK South"
    name = module.naming.virtual_network.name
    resource_group_name = azurerm_resource_group.provider.name
}

resource "azurerm_subnet" "provider" {
    name = module.naming.subnet.name
    resource_group_name = azurerm_resource_group.provider.name
    virtual_network_name = azurerm_virtual_network.provider.name
    address_prefixes = [ "10.0.1.0/24" ]
}

module "storage" {
    source = "./modules/storage_account"
    resource_group = azurerm_resource_group.provider.name
}

module "storagev3" {
    source = "./modules/storage_accountv3"
    resource_group = azurerm_resource_group.provider.name
}
