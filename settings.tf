terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~>2.99.0"
        }
        azurermv3 = {
            source = "hashicorp/azurermv3"
            version = "~>3.7.0"
        }
    }
    required_version = ">=0.14"
}

provider "azurerm" {
    features {
    }
}

provider "azurermv3" {
    features {
    }
}
