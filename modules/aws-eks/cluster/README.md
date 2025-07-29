<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.ctf_eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_openid_connect_provider.ctf_eks_oidc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.ctf_eks_iam_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ctf_eks_iam_cluster_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group_rule.ctf_eks_cluster_sg_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [tls_certificate.ctf_eks_oidc_tls_certificate](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used as prefix for tags | `string` | n/a | yes |
| <a name="input_public_subnet_1a"></a> [public\_subnet\_1a](#input\_public\_subnet\_1a) | Public subnet 1a for the cluster | `string` | n/a | yes |
| <a name="input_public_subnet_1b"></a> [public\_subnet\_1b](#input\_public\_subnet\_1b) | Public subnet 1b for the cluster | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to be applied to resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_saida_certificate_authority"></a> [saida\_certificate\_authority](#output\_saida\_certificate\_authority) | n/a |
| <a name="output_saida_cluster_name"></a> [saida\_cluster\_name](#output\_saida\_cluster\_name) | n/a |
| <a name="output_saida_endpoint"></a> [saida\_endpoint](#output\_saida\_endpoint) | n/a |
| <a name="output_saida_oidc"></a> [saida\_oidc](#output\_saida\_oidc) | n/a |
<!-- END_TF_DOCS -->