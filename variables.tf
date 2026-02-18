variable "project_customer_name" {
  type = string
}

variable "location" {
  type = string
}

variable "project_name" {
  type = string
}

variable "project_stage" {
  type = string
}

variable "project_cost_center" {
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
variable "publicip_resource_group" {
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