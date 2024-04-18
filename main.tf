terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.28.0"
    }
  }
}

provider "azurerm" {
  features {
  }
}

variable "tag_id" {
  type = string
}

resource "azurerm_resource_group" "rg_apputb" {
  name     = "rg_apputb"
  location = "eastus"
}

resource "azurerm_app_service_plan" "example" {
  name                = "example-app-service-plan"
  location            = azurerm_resource_group.rg_apputb.location
  resource_group_name = azurerm_resource_group.rg_apputb.name
  kind                = "Linux"

  sku {
    tier = "Basic"
    size = "B1"
  }
  reserved = true
}

resource "azurerm_app_service" "example" {
  name                = "example-app-service-montoyita41"
  location            = azurerm_resource_group.rg_apputb.location
  resource_group_name = azurerm_resource_group.rg_apputb.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    always_on        = true
    linux_fx_version = "DOCKER|montoyita41/utbapp:${var.tag_id}"
  }
}