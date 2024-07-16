output "cluster_endpoint" {
  description = "Endpoint for the Kubernetes API server"
  value       = kind_cluster.default.endpoint
}

output "cluster_name" {
  description = "Name of the Kubernetes cluster"
  value       = kind_cluster.default.name
}

output "helm_release_name" {
  description = "Name of the Helm release"
  value       = helm_release.nodejs.name
}

output "helm_release_status" {
  description = "Status of the Helm release"
  value       = helm_release.nodejs.status
}
