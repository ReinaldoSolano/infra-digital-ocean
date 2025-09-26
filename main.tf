resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "meu-k8s-cluster"
  region  = "nyc3"
  version = "1.33.1-do.4"
  vpc_uuid = digitalocean_vpc.vpc_k8s.id

  node_pool {
    name       = "default-pool"
    size       = "s-2vcpu-4gb"
    node_count = 2
    auto_scale = false
    tags       = ["k8s-node"]
  }
}

resource "digitalocean_database_cluster" "pg" {
  name       = "meu-db-postgres"
  engine     = "pg"
  version    = "17"
  region     = "nyc3"
  size       = "db-s-1vcpu-1gb"
  node_count = 1
  private_network_uuid = digitalocean_vpc.vpc_k8s.id
}
