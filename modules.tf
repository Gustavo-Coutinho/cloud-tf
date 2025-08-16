module "ctf_eks_network" {
  source       = "./modules/aws-eks/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "ctf_eks_cluster" {
  source           = "./modules/aws-eks/cluster"
  project_name     = var.project_name
  tags             = var.tags
  public_subnet_1a = module.ctf_eks_network.subnet_pub_1a
  public_subnet_1b = module.ctf_eks_network.subnet_pub_1b
  seu_ip           = var.seu_ip
}

module "ctf_eks_nodegroup" {
  source         = "./modules/aws-eks/nodegroup"
  project_name   = var.project_name
  cluster_name   = module.ctf_eks_cluster.saida_cluster_name
  subnet_priv_1a = module.ctf_eks_network.subnet_priv_1a
  subnet_priv_1b = module.ctf_eks_network.subnet_priv_1b
  tags           = var.tags
}

module "ctf_eks_alb_controller" {
  source       = "./modules/aws-eks/alb-controller"
  project_name = var.project_name
  cluster_name = module.ctf_eks_cluster.saida_cluster_name
  tags         = var.tags
  oidc         = module.ctf_eks_cluster.saida_oidc
  vpc_id       = module.ctf_eks_network.vpc_id
}

# module "tfstate-aws-s3-setup" {
#   source = "./modules/utils/tfstate-aws-s3-setup"
# }