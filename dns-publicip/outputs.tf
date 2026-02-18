output "out_publicip_address" {
  value = azurerm_public_ip.publicip.ip_address
}

output "out_publicip_name" {
  value = azurerm_public_ip.publicip.name
}

output "out_network_publicip_resource_group" {
  value = var.publicip_resource_group
}

output "out_public_ip_id" {
  value = azurerm_public_ip.publicip.id
}