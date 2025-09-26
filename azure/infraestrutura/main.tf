# Este arquivo informa ao Azure quais recursos para criar

# Conecte-se ao Azure
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Crie um grupo de recursos (como uma pasta para os recursos)
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

# Crie um aplicativo da web simples
resource "azurerm_container_group" "webapp" {
  name                = "Meu  WebApp"
  location           = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  ip_address_type     = "Public"
  os_type            = "Linux"

  container {
    name   = "webapp"
    image  = "mcr.microsoft.com/oss/nginx/nginx:1.15.5-alpine"
    cpu    = "0.5"
    memory = "1.5"
    
    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}