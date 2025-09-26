output "webapp_url" {
  description = "O URL público do aplicativo da web"
  value       = "http://${azurerm_container_group.webapp.ip_address}"
}

output "webapp_ip" {
  description = "O endereço IP público do aplicativo da web"
  value       = azurerm_container_group.webapp.ip_address
}

output "resource_group_name" {
  description = "projeto infraestrutura"
  value       = azurerm_resource_group.main.name
}

output "location" {
  description = "A região do Azure onde os recursos são implantados"
  value       = azurerm_resource_group.main.location
} 