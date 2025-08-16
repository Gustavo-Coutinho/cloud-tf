locals {
  tags = {
    Environment       = "Development"
    Project           = "EKSClusterDemo"
    Owner             = "Gustavo-Coutinho"
    CostCenter        = "DevOps"
    ManagedBy         = "Terraform"
    KubernetesCluster = "true"
    Platform          = "AWS"
    Purpose           = "Portfolio"
  }
}
