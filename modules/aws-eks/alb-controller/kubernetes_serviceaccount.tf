resource "kubernetes_service_account" "ctf_eks_kubernetes_controller_service_account" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.ctf_eks_iam_alb_controller_role.arn
    }
  }
}