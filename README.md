# cloud-tf
Infrastructure as Code for use with Terraform in different providers

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.0.0-beta3 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 3.0.2 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ctf_eks_alb_controller"></a> [ctf\_eks\_alb\_controller](#module\_ctf\_eks\_alb\_controller) | ./modules/aws-eks/alb-controller | n/a |
| <a name="module_ctf_eks_cluster"></a> [ctf\_eks\_cluster](#module\_ctf\_eks\_cluster) | ./modules/aws-eks/cluster | n/a |
| <a name="module_ctf_eks_network"></a> [ctf\_eks\_network](#module\_ctf\_eks\_network) | ./modules/aws-eks/network | n/a |
| <a name="module_ctf_eks_nodegroup"></a> [ctf\_eks\_nodegroup](#module\_ctf\_eks\_nodegroup) | ./modules/aws-eks/nodegroup | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used as prefix for tags | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region in which resources will be created | `string` | n/a | yes |
| <a name="input_your_public_ip"></a> [seu\_ip](#input\_seu\_ip) | Your public IP address to allow access to the EKS cluster. Execute `curl ifconfig.me` to obtain your IP. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to be applied to resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_authority"></a> [certificate\_authority](#output\_certificate\_authority) | The certificate authority data for the EKS cluster. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The endpoint for the EKS cluster. |
<!-- END_TF_DOCS -->