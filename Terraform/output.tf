output "kubernetes_cluster_id" {
  value = digitalocean_kubernetes_cluster.devops-cluster.id
}

output "kubernetes_cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.devops-cluster.endpoint
}

output "kubernetes_cluster_token" {
  value = digitalocean_kubernetes_cluster.devops-cluster.kube_config[0].token
  sensitive = true
}

output "kubernetes_cluster_ca_certificate" {
  value = digitalocean_kubernetes_cluster.devops-cluster.kube_config[0].cluster_ca_certificate
  sensitive = true
}

