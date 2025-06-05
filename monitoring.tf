resource "azurerm_log_analytics_workspace" "logs" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  allow_resource_only_permissions = true
  internet_ingestion_enabled      = true
  internet_query_enabled          = true
  local_authentication_disabled   = false

  tags = {
    environment = "FrameCloud"
  }

  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_monitor_diagnostic_setting" "nsg_logs" {
  name                       = "nsg-diagnostics"
  target_resource_id         = azurerm_network_security_group.framecloud.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.logs.id
  log_analytics_destination_type = "Dedicated"

  enabled_log {
    category = "NetworkSecurityGroupEvent"
    retention_policy {
      enabled = false
    }
  }

  enabled_log {
    category = "NetworkSecurityGroupRuleCounter"
    retention_policy {
      enabled = false
    }
  }

  depends_on = [azurerm_log_analytics_workspace.logs, azurerm_network_security_group.framecloud]
}
