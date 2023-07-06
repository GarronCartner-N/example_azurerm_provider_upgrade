module "naming" {
    source  = "Azure/naming/azurerm"
    version = "0.3.0"
}

resource "azurerm_storage_account" "provider" {
    account_replication_type = "GRS"
    account_tier = "Standard"
    location = "UK South"
    name = module.naming.storage_account.name_unique
    resource_group_name = var.resource_group
    min_tls_version = "TLS1_2"
    allow_blob_public_access = false
}
