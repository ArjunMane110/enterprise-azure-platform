terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "platform_rg" {
  name     = "rg-${var.environment}-platform"
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    workload    = "platform"
  }
}
