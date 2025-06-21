module "ctf_eks_network" {
  source       = "./modules/aws-eks/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "ctf_eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.ctf_eks_network.subnet_pub_1a
  public_subnet_1b = module.ctf_eks_network.subnet_pub_1b
}

# module "tfstate-aws-s3-setup" {
#   source = "./modules/utils/tfstate-aws-s3-setup"
# }