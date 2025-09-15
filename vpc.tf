resource "digitalocean_vpc" "main" {
  name     = var.vpc_name
  region   = var.region
  ip_range = var.vpc_range
}