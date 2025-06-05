resource "azuread_group" "admins" {
  display_name     = var.admin_group_name
  security_enabled = true
  visibility       = "Private"
  owners           = [var.admin_owner_object_id]
}

resource "azuread_group" "developers" {
  display_name     = var.dev_group_name
  security_enabled = true
  visibility       = "Private"
  owners           = [var.dev_owner_object_id]
}

resource "azurerm_role_assignment" "admin_role" {
  principal_id         = azuread_group.admins.object_id
  role_definition_name = "Owner"
  scope                = azurerm_resource_group.rg.id
  principal_type       = "Group"
}

resource "azurerm_role_assignment" "dev_role" {
  principal_id         = azuread_group.developers.object_id
  role_definition_name = "Reader"
  scope                = azurerm_resource_group.rg.id
  principal_type       = "Group"
}
