resource "aws_iam_policy" "policy" {
  name        = "${var.project_name}-eks-alb-controller-policy"
  path        = "/"
  description = "IAM policy for AWS EKS ALB Ingress Controller"
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("${path.module}/iam_policy_v2.13.0.json")
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-rtb-private-1b"
  })
}