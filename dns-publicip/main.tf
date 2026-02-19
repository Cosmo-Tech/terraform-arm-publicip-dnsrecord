locals {
  tags = {
    vendor      = "cosmotech"
    stage       = var.project_stage
    customer    = var.project_customer_name
    project     = var.project_name
    cost_center = var.project_cost_center
  }
}

resource "azurerm_resource_group" "public_ip_rg" {
  name     = var.publicip_resource_group
  location = var.location
}

# Public IP
resource "azurerm_public_ip" "publicip" {
  name                = substr("CosmoTech-${var.project_customer_name}-${var.project_name}-${var.project_stage}-PublicIP", 0, 80)
  resource_group_name = azurerm_resource_group.public_ip_rg.name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = local.tags
}