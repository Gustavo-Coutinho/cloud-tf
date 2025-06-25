resource "aws_iam_role" "ctf_eks_iam_alb_controller_role" {
  name = "${var.project_name}-eks-iam-alb-controller-role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Federated = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/oidc.eks.${data.aws_region.current.region}.amazonaws.com/id/${local.oidc}"
        }
      },
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-iam-alb-controller-role"
  })
}
resource "aws_iam_role_policy_attachment" "ctf_eks_iam_alb_controller_policy_attachment" {
  role       = aws_iam_role.ctf_eks_iam_alb_controller_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}