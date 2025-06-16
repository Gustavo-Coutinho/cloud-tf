resource "aws_internet_gateway" "ctf_eks_igw" {
  vpc_id = aws_vpc.ctf_eks_vpc.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-igw"
  })
}