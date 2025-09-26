resource "digitalocean_vpc" "vpc_k8s" {
  name     = "meu-vpc"
  region   = "nyc3"
  description = "VPC para Kubernetes e PostgreSQL"
}