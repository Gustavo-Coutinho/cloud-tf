resource "aws_subnet" "ctf_eks_subnet_private_1a" {
  vpc_id            = aws_vpc.ctf_eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.region}a"
  tags = merge(
    local.tags,
    {
      Name                             = "${var.project_name}-subnet-private-1a",
      "kubenetes.io/role/internal-elb" = 1
  })
}
resource "aws_subnet" "ctf_eks_subnet_private_1b" {
  vpc_id            = aws_vpc.ctf_eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.region}b"
  tags = merge(
    local.tags,
    {
      Name                             = "${var.project_name}-subnet-private-1b",
      "kubenetes.io/role/internal-elb" = 1
  })
}
