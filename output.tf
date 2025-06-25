output "certificate_authority" {
  value = module.ctf_eks_cluster.saida_certificate_authority
}

output "endpoint" {
  value = module.ctf_eks_cluster.saida_endpoint
}