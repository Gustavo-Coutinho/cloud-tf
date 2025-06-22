variable "project_name" {
  type        = string
  description = "Project name to be used as prefix for tags"
}

variable "tags" {
  type        = map(any)
  description = "Map of tags to be applied to resources"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "subnet_priv_1a" {
  type        = string
  description = "Private subnet 1a for the cluster"
}

variable "subnet_priv_1b" {
  type        = string
  description = "Private subnet 1b for the cluster"
}