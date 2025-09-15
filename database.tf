resource "digitalocean_database_cluster" "postgres" {
  for_each = var.databases

  name                 = each.value.name
  engine               = "pg"
  version              = each.value.version
  size                 = each.value.size
  region               = var.region
  node_count           = 1
  private_network_uuid = digitalocean_vpc.main.id

  tags = ["environment:${each.key}"]
}