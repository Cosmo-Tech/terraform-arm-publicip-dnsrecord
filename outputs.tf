output "out_network_publicip_address" {
  value = module.dns_public_ip.out_network_publicip_address
}

output "out_network_publicip_name" {
  value = module.dns_public_ip.out_network_publicip_name
}

output "out_network_publicip_resource_group" {
  value = var.publicip_resource_group
}

output "out_network_publicip_id" {
  value = module.dns_public_ip.out_network_publicip_id
}

output "out_network_dns_record" {
  value = var.network_dns_record
}

output "out_network_dns_zone_name" {
  value = var.network_dns_zone_name
}

output "out_api_dns_name" {
  value = "${var.network_dns_record}.${var.network_dns_zone_name}"
}