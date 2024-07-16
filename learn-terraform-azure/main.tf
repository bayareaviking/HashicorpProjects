# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.1.0"
  cloud {
    organization = "BAVCloudSolutions"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.region
  tags     = local.common_tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.network_name
  address_space       = var.network_space
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet0_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.network_name
  address_prefixes     = var.subnet0_prefix
}