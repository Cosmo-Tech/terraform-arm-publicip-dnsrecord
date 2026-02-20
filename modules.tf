module "dns_public_ip" {
  source = "./dns-publicip"

  # project configuration
  project_customer_name = var.project_customer_name
  project_name          = var.project_name
  project_stage         = var.project_stage
  project_cost_center   = var.project_cost_center

  # azure authentication
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  # network and location
  location                = var.location
  publicip_resource_group = var.publicip_resource_group
}

module "dns_record" {
  source = "./dns-record"
  # azure authentication
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  # network and location
  location              = var.location
  network_dns_zone_rg   = var.network_dns_zone_rg
  network_dns_zone_name = var.network_dns_zone_name
  network_dns_record    = var.network_dns_record
  network_publicip_id   = module.dns_public_ip.out_network_publicip_id

  depends_on = [ module.dns_public_ip ]

}

