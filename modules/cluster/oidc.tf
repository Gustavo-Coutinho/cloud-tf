data "tls_certificate" "ctf_eks_oidc_tls_certificate" {
  url = aws_eks_cluster.ctf_eks_cluster.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "ctf_eks_oidc" {
  client_id_list = [
    "sts.amazon.com"
  ]
  thumbprint_list = data.tls_certificate.ctf_eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
  url             = data.tls_certificate.ctf_eks_oidc_tls_certificate.url
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-oidc"
  })
}