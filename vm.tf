resource "azurerm_windows_virtual_machine" "frontend_vm" {
  name                  = "frontend-vm"
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  size                  = "Standard_B1s"
  admin_username        = "adminuser"
  admin_password        = "P@ssw0rd1234!"
  network_interface_ids = [azurerm_network_interface.frontend_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "win10-21h2-pro"
    version   = "latest"
  }

  tags = {
    environment = "appsters"
    tier        = "frontend"
  }

  depends_on = [azurerm_network_interface.frontend_nic]
}

resource "azurerm_windows_virtual_machine" "backend_vm" {
  name                  = "backend-vm"
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  size                  = "Standard_B1s"
  admin_username        = "adminuser"
  admin_password        = "P@ssw0rd1234!"
  network_interface_ids = [azurerm_network_interface.backend_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "win10-21h2-pro"
    version   = "latest"
  }

  tags = {
    environment = "appsters"
    tier        = "backend"
  }

  depends_on = [azurerm_network_interface.backend_nic]
}
