module "eks" {
  cidr_block   = "10.0.0.0/16"
  project_name = "ctf"
  region       = "us-east-1"
  source       = "github.com/Gustavo-Coutinho/cloud-tf.git"
  tags         = local.tags
  seu_ip       = "111.22.33.44"
}