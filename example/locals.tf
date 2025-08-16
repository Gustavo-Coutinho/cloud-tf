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
  your_public_ip = "111.22.33.44"
}
