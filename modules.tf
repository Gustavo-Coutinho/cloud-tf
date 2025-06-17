module "ctf_eks_network" {
  source       = "./modules/aws-eks/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

# module "tfstate-aws-s3-setup" {
#   source = "./modules/utils/tfstate-aws-s3-setup"
# }