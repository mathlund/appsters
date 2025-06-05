variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "admin_owner_object_id" {
  description = "Object ID of the Azure AD admin group"
  type        = string
}

variable "dev_owner_object_id" {
  description = "Object ID of the Azure AD developer group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnet_frontend_name" {
  description = "Name of the frontend subnet"
  type        = string
}

variable "subnet_frontend_prefix" {
  description = "CIDR prefix for the frontend subnet"
  type        = string
}

variable "subnet_backend_name" {
  description = "Name of the backend subnet"
  type        = string
}

variable "subnet_backend_prefix" {
  description = "CIDR prefix for the backend subnet"
  type        = string
}

variable "subnet_database_name" {
  description = "Name of the database subnet"
  type        = string
}

variable "subnet_database_prefix" {
  description = "CIDR prefix for the database subnet"
  type        = string
}

variable "network_security_group_name" {
  description = "Name of the network security group"
  type        = string
}

variable "admin_group_name" {
  description = "Name of the Azure AD admin group"
  type        = string
}

variable "dev_group_name" {
  description = "Name of the Azure AD developer group"
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
}

variable "backup_vault_name" {
  description = "Name of the Recovery Services vault"
  type        = string
}

variable "admin_username" {
  description = "Administrator username for the virtual machines"
  type        = string
}

variable "admin_password" {
  description = "Administrator password for the virtual machines"
  type        = string
  sensitive   = true
}

variable "nic_frontend_name" {
  description = "Name of the frontend NIC"
  type        = string
}

variable "nic_backend_name" {
  description = "Name of the backend NIC"
  type        = string
}
