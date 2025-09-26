# Este arquivo define as configurações dos recursos
variable "resource_group_name" {
  description = "rg-nginx-eastus"
  type        = string
  }

variable "location" {
  description = "Região do Azure"
  type        = string
  default     = "East US"
}
