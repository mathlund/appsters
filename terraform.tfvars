subscription_id         = "55ce5f99-167e-4aa6-a6f1-5974c323e01c"
admin_owner_object_id   = "41436553-ac7a-4936-8b5a-869f9a5b2ad7"
dev_owner_object_id     = "41436553-ac7a-4936-8b5a-869f9a5b2ad7"

location                = "westeurope"
resource_group_name     = "appsters-core"
virtual_network_name    = "appsters-vnet"
address_space           = ["10.1.0.0/16"]

subnet_frontend_name    = "frontend"
subnet_frontend_prefix  = "10.1.1.0/24"

subnet_backend_name     = "backend"
subnet_backend_prefix   = "10.1.2.0/24"

subnet_database_name    = "database"
subnet_database_prefix  = "10.1.3.0/24"

network_security_group_name = "appsters-nsg"

admin_group_name        = "appsters-admins"
dev_group_name          = "appsters-devs"

log_analytics_workspace_name = "appsters-logs"
backup_vault_name = "appsters-backup-vault"

admin_username          = "adminuser"
admin_password          = "FrameCloud123321"

nic_frontend_name       = "frontend-nic"
nic_backend_name        = "backend-nic"
