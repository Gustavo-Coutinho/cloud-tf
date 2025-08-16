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

variable "your_public_ip" {
  type        = string
  description = "Your public IP address to allow access to the EKS cluster. Execute `curl ifconfig.me` to obtain your IP."
}

variable "tags" {
  type        = map(any)
  description = "Map of tags to be applied to resources"
}