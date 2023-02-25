resource "kubernetes_service" "prometheus_service" {
  metadata {
    name = "prometheus"
    namespace = "monitoring"
  }
  spec {
    selector = {
      name = "prometheus"
    }
    port {
      port = 80
      protocol = "TCP"
      targetort = 9090
    }
    type = "LoadBalancer"
  }
}

