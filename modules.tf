module "ctf_eks_network" {
  source       = "./modules/aws-eks/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "ctf_eks_cluster" {
  source           = "./modules/aws-eks/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.ctf_eks_network.subnet_pub_1a
  public_subnet_1b = module.ctf_eks_network.subnet_pub_1b
}

module "ctf_eks_nodegroup" {
  source       = "./modules/aws-eks/nodegroup"
  project_name = var.project_name
  cluster_name = module.ctf_eks_cluster.saida_cluster_name
  subnet_priv_1a = module.ctf_eks_network.subnet_priv_1a
  subnet_priv_1b = module.ctf_eks_network.subnet_priv_1b
  tags         = local.tags
}

# module "tfstate-aws-s3-setup" {
#   source = "./modules/utils/tfstate-aws-s3-setup"
# }