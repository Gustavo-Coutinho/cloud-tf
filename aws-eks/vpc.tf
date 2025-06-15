resource "aws_vpc" "main" {
  # cidr_block           = "10.0.0.0/16"
  cidr_block           = cidrsubnet("10.0.0.0/16", 8, 1)
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "ctf-vpc"
  }
}

