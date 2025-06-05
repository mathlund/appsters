resource "azurerm_network_interface" "frontend_nic" {
  name                = var.nic_frontend_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.frontend.id
    private_ip_address_allocation = "Dynamic"
  }

  depends_on = [azurerm_subnet.frontend]
}

resource "azurerm_network_interface" "backend_nic" {
  name                = var.nic_backend_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.backend.id
    private_ip_address_allocation = "Dynamic"
  }

  depends_on = [azurerm_subnet.backend]
}
