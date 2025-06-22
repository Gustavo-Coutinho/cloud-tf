resource "aws_iam_role" "ctf_eks_iam_nodegroup_role" {
  name = "${var.project_name}-eks-iam-nodegroup-role"

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
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-iam-nodegroup-role"
  })
}
resource "aws_iam_role_policy_attachment" "ctf_eks_iam_nodegroup_role_policy_attachment_worker" {
  role       = aws_iam_role.ctf_eks_iam_nodegroup_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}
resource "aws_iam_role_policy_attachment" "ctf_eks_iam_nodegroup_role_policy_attachment_ecr" {
  role       = aws_iam_role.ctf_eks_iam_nodegroup_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}
resource "aws_iam_role_policy_attachment" "ctf_eks_iam_nodegroup_role_policy_attachment_cni" {
  role       = aws_iam_role.ctf_eks_iam_nodegroup_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}