variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "nodejs-cluster"
}

variable "helm_release_name" {
  description = "Name of the Helm release"
  type        = string
  default     = "nodejs-app"
}

variable "helm_chart_path" {
  description = "Path to the Helm chart"
  type        = string
  default     = "../nodejs-chart"
}

variable "docker_image_repository" {
  description = "Docker image repository for the Node.js application"
  type        = string
}

variable "docker_image_tag" {
  description = "Docker image tag for the Node.js application"
  type        = string
  default     = "latest"
}
