# para uso do Internet Gateway
resource "aws_route_table" "ctf_eks_route_table_public" {
  vpc_id = aws_vpc.ctf_eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ctf_eks_igw.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-rtb-public"
  })
}