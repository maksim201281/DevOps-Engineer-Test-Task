resource "kind_cluster" "default" {
  name           = var.cluster_name
  wait_for_ready = true
  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"
    node {
      role = "control-plane"
    }
    node {
      role = "worker"
    }
  }
}

resource "helm_release" "nodejs" {
  name       = var.helm_release_name
  chart      = var.helm_chart_path
  
  set {
    name  = "image.repository"
    value = var.docker_image_repository
  }
  
  set {
    name  = "image.tag"
    value = var.docker_image_tag
  }
  
  depends_on = [kind_cluster.default]
}
