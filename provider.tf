terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
    helm = {
      source = "hashicorp/helm"
      version = "3.0.2"
    }

  }
  backend "s3" {
    bucket = "ctf-terraform-state-gupoco"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = module.ctf_eks_cluster.saida_endpoint
  cluster_ca_certificate = base64decode(module.ctf_eks_cluster.saida_certificate_authority)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.ctf_eks_cluster.saida_cluster_name]
    command     = "aws"
  }
}

provider "helm" {
  kubernetes = {
    host                   = module.ctf_eks_cluster.saida_endpoint
    cluster_ca_certificate = base64decode(module.ctf_eks_cluster.saida_certificate_authority)
    exec = {
      api_version = "client.authentication.k8s.io/v1"
      args        = ["eks", "get-token", "--cluster-name", module.ctf_eks_cluster.saida_cluster_name]
      command     = "aws"
    }
  }
}

# cuidado: deixar o import aqui vai fazer com que o bucket seja deletado com o `terraform apply -destroy`
# import {
#   to = module.tfstate-aws-s3-setup.aws_s3_bucket.ctf_terraform_state_gupoco
#   id = "ctf-terraform-state-gupoco"
# }