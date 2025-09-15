resource "digitalocean_kubernetes_cluster" "main" {
  name     = var.name
  region   = var.region
  version  = var.ver
  vpc_uuid = digitalocean_vpc.main.id

  node_pool {
    name       = var.node_name
    size       = var.node_size
    node_count = var.node_count
  }
}

resource "local_file" "kube_config" {
  content  = digitalocean_kubernetes_cluster.main.kube_config.0.raw_config
  filename = "kube_config.yaml"
}