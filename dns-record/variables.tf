variable "location" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "client_id" {
  type        = string
  description = "The client id"
}
variable "client_secret" {
  type        = string
  description = "The client secret"
}
variable "subscription_id" {
  type = string
}

variable "network_dns_record" {
  type = string
}
variable "network_dns_zone_name" {
  type = string
}
variable "network_dns_zone_rg" {
  type = string
}
variable "network_publicip_id" {
  type = string
}