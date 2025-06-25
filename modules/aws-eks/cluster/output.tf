output "saida_cluster_name" {
  value = aws_eks_cluster.ctf_eks_cluster.id
}

output "saida_oidc" {
  value = aws_eks_cluster.ctf_eks_cluster.identity[0].oidc[0].issuer
}

output "saida_certificate_authority" {
  value = aws_eks_cluster.ctf_eks_cluster.certificate_authority[0].data
}

output "saida_endpoint" {
  value = aws_eks_cluster.ctf_eks_cluster.endpoint
}