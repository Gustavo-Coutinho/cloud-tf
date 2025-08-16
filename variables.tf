variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used as prefix for tags"
}

variable "region" {
  type        = string
  description = "AWS Region in which resources will be created"
}

variable "tags" {
  type        = map(any)
  description = "Map of tags to be applied to resources"
}