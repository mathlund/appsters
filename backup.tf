resource "azurerm_recovery_services_vault" "backup_vault" {
  name                = var.backup_vault_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"

  soft_delete_enabled            = true
  public_network_access_enabled  = true
  cross_region_restore_enabled   = false
  storage_mode_type              = "GeoRedundant"

  tags = {
    environment = "FrameCloud"
  }

  depends_on = [azurerm_resource_group.rg]
}
