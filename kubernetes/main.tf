resource "kubernetes_namespace" "frontend" {
  metadata {
    name = var.namespace

    labels = {
      name        = var.namespace
      environment = var.environment
      component   = "frontend"
    }
  }
}

resource "helm_release" "frontend" {
  name       = var.helm_release_name
  namespace  = kubernetes_namespace.frontend.metadata[0].name
  chart      = var.helm_chart_path

  values = [
    file("${var.helm_chart_path}/values.yaml"),
    file(var.helm_values_file)
  ]

  depends_on = [
    kubernetes_namespace.frontend
  ]
}