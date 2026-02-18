resource "azurerm_dns_a_record" "platform_fqdn" {
  name                = var.network_dns_record
  zone_name           = var.network_dns_zone_name
  resource_group_name = var.network_dns_zone_rg
  target_resource_id  = var.network_publicip_id
  ttl                 = 300
}
