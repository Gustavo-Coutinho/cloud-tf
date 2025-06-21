resource "aws_eks_cluster" "ctf_eks_cluster" {
  name = "${var.project_name}-eks-cluster"

  access_config {
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.ctf_eks_iam_cluster_role.arn
  version  = "1.33"

  vpc_config {
    subnet_ids = [
      var.public_subnet_1a,
      var.public_subnet_1b
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
    public_access_cidrs     = ["189.33.65.107/32"] # result of curl ifconfig.me
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.ctf_eks_iam_cluster_role_policy_attachment,
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-cluster"
  })
}