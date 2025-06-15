resource "aws_subnet" "ctf_eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.ctf_eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true
  tags = merge(
    local.tags,
    {
      Name                    = "ctf-subnet-public-1a",
      "kubenetes.io/role/elb" = 1
  })
}
resource "aws_subnet" "ctf_eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.ctf_eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true
  tags = merge(
    local.tags,
    {
      Name                    = "ctf-subnet-public-1b",
      "kubenetes.io/role/elb" = 1
  })
}
