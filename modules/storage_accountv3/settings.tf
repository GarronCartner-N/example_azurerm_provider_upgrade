terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurermv3"
            version = "~>3.7.0"
        }
    }
    required_version = ">=0.14"
}
