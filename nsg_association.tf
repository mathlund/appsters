resource "azurerm_subnet_network_security_group_association" "frontend" {
  subnet_id                 = azurerm_subnet.frontend.id
  network_security_group_id = azurerm_network_security_group.framecloud.id
  depends_on                = [azurerm_subnet.frontend, azurerm_network_security_group.framecloud]
}

resource "azurerm_subnet_network_security_group_association" "backend" {
  subnet_id                 = azurerm_subnet.backend.id
  network_security_group_id = azurerm_network_security_group.framecloud.id
  depends_on                = [azurerm_subnet.backend, azurerm_network_security_group.framecloud]
}

resource "azurerm_subnet_network_security_group_association" "database" {
  subnet_id                 = azurerm_subnet.database.id
  network_security_group_id = azurerm_network_security_group.framecloud.id
  depends_on                = [azurerm_subnet.database, azurerm_network_security_group.framecloud]
}
