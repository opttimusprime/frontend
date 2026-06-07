output "frontend_namespace" {
  value = kubernetes_namespace.frontend.metadata[0].name
}

output "frontend_release_name" {
  value = helm_release.frontend.name
}