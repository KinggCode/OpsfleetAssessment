# OpsFleet Dev Karpenter Cluster Namespace
resource "kubernetes_namespace" "karpenter" {
  metadata {
    name = "karpenter"
  }
}


# OpsFleet Dev Karpenter Cluster
resource "helm_release" "karpenter" {
  name       = "karpenter"
  repository = "https://charts.karpenter.sh/"
  chart      = "karpenter"
  namespace  = kubernetes_namespace.karpenter.metadata[0].name
  timeout    = 600  # Increase timeout to 10 minutes (default is 5 minutes)


  set {
    name  = "serviceAccount.name"
    value = "karpenter"
  }

  set {
    name  = "controller.clusterName"
    value = "opsfleet-dev-cluster"
  }

  set {
    name  = "controller.aws.defaultInstanceProfile"
    value = module.opsfleet_dev_karpenter_profile.default_instance_profile.name
  }
}
