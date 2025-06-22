resource "aws_iam_role" "ctf_eks_iam_cluster_role" {
  name = "${var.project_name}-eks-iam-cluster-role"

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
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-iam-cluster-role"
  })
}
resource "aws_iam_role_policy_attachment" "ctf_eks_iam_cluster_role_policy_attachment" {
  role       = aws_iam_role.ctf_eks_iam_cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}