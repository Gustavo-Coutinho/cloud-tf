variable "project_name" {
  type        = string
  description = "Project name to be used as prefix for tags"
}

variable "tags" {
  type        = map(any)
  description = "Map of tags to be applied to resources"
}

variable "oidc" {
  type        = string
  description = "OIDC provider URL for the EKS cluster"
}