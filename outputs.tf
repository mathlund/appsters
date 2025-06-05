output "network_security_group_name" {
  value = var.network_security_group_name
}

output "resource_group_name" {
  value = var.resource_group_name
}

output "virtual_network_name" {
  value = var.virtual_network_name
}

output "subnet_names" {
  value = [
    "frontend",
    "backend",
    "database"
  ]
}

output "backup_vault_name" {
  value = azurerm_recovery_services_vault.backup_vault.name
}
