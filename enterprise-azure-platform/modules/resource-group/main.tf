resource "azurerm_resource_group" "E-rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}