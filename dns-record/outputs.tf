output "out_network_dns_record" {
  value = var.network_dns_record
}

output "out_network_dns_zone_name" {
  value = var.network_dns_zone_name
}

output "out_api_dns_name" {
  value = "${var.network_dns_record}.${var.network_dns_zone_name}"
}