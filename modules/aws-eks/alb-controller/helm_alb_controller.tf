# helm repo add eks-charts https://aws.github.io/eks-charts
# helm repo update
# helm search repo aws-load-balancer-controller
resource "helm_release" "ctf_eks_helm_alb_controller" {
  name       = "aws-load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  version = "1.13.3"
  namespace = "kube-system"

  set = [
    {
      name = "region"
      value = "${data.aws_region.current.region}"
    },
    {
      name = "vpcId"
      value = var.vpc_id
    },
    {
      name  = "clusterName"
      value = var.cluster_name
    },
    {
      name  = "serviceAccount.create"
      value = "false"
    },
    {
      name  = "serviceAccount.name"
      value = "aws-load-balancer-controller"
    }
  ]
}