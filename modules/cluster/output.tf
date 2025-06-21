output "oidc" {
  value = data.tls_certificate.ctf_eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
}