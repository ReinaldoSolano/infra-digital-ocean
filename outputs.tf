output "database_endpoints" {
  description = "Database cluster endpoints for all environments"
  value = {
    for env, db in digitalocean_database_cluster.postgres : env => {
      host     = db.host
      port     = db.port
      database = db.database
      username = db.user
      password = db.password
      uri      = db.uri
    }
  }
  sensitive = true
}

output "database_connection_info" {
  description = "Database connection information (non-sensitive)"
  value = {
    for env, db in digitalocean_database_cluster.postgres : env => {
      name   = db.name
      host   = db.host
      port   = db.port
      engine = db.engine
      size   = db.size
    }
  }
}

output "vpc_info" {
  description = "VPC information"
  value = {
    id       = digitalocean_vpc.main.id
    name     = digitalocean_vpc.main.name
    ip_range = digitalocean_vpc.main.ip_range
  }
}

output "kubernetes_cluster_endpoint" {
  description = "Kubernetes cluster endpoint"
  value       = digitalocean_kubernetes_cluster.main.endpoint
}

output "kubernetes_cluster_id" {
  description = "Kubernetes cluster ID"
  value       = digitalocean_kubernetes_cluster.main.id
}