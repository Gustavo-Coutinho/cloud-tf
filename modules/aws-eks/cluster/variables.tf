variable "project_name" {
  type        = string
  description = "Project name to be used as prefix for tags"
}

variable "tags" {
  type        = map(any)
  description = "Map of tags to be applied to resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "Public subnet 1a for the cluster"
}

variable "public_subnet_1b" {
  type        = string
  description = "Public subnet 1b for the cluster"
}
variable "seu_ip" {
  type        = string
  description = "Your public IP address to allow access to the EKS cluster. Execute `curl ifconfig.me` to obtain your IP."
}