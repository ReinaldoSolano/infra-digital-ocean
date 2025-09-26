output "kubeconfig" {
  value     = digitalocean_kubernetes_cluster.k8s.kube_config[0]
  sensitive = true
}

output "db_uri" {
  value     = digitalocean_database_cluster.pg.uri
  sensitive = true
}
