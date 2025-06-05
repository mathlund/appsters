resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
}

resource "azurerm_subnet" "frontend" {
  name                 = var.subnet_frontend_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_frontend_prefix]
  depends_on           = [azurerm_virtual_network.vnet, azurerm_resource_group.rg]
}

resource "azurerm_subnet" "backend" {
  name                 = var.subnet_backend_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_backend_prefix]
  depends_on           = [azurerm_virtual_network.vnet, azurerm_resource_group.rg]
}

resource "azurerm_subnet" "database" {
  name                 = var.subnet_database_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_database_prefix]
  depends_on           = [azurerm_virtual_network.vnet, azurerm_resource_group.rg]
}

resource "azurerm_network_security_group" "framecloud" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

