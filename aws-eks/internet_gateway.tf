resource "aws_internet_gateway" "ctf_eks_igw" {
  vpc_id = aws_vpc.ctf_eks_vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-igw"
  })
}