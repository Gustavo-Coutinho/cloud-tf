resource "aws_eks_node_group" "ctf_eks_nodegroup" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-eks-nodegroup"
  node_role_arn   = aws_iam_role.ctf_eks_iam_nodegroup_role.arn
  subnet_ids = [
    var.subnet_priv_1a,
    var.subnet_priv_1b
  ]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-nodegroup"
  })
  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.ctf_eks_iam_nodegroup_role_policy_attachment_worker,
    aws_iam_role_policy_attachment.ctf_eks_iam_nodegroup_role_policy_attachment_ecr,
    aws_iam_role_policy_attachment.ctf_eks_iam_nodegroup_role_policy_attachment_cni
  ]
}