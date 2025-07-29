output "certificate_authority" {
  value = module.ctf_eks_cluster.saida_certificate_authority
  description = "The certificate authority data for the EKS cluster."
}

output "endpoint" {
  value = module.ctf_eks_cluster.saida_endpoint
  description = "The endpoint for the EKS cluster."
}