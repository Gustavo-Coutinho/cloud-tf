# para uso do NAT Gateway
resource "aws_route_table" "ctf_eks_route_table_private_1a" {
  vpc_id = aws_vpc.ctf_eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ctf_eks_ngw_1a.id
  }

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-rtb-private-1a"
  })
}
resource "aws_route_table" "ctf_eks_route_table_private_1b" {
  vpc_id = aws_vpc.ctf_eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ctf_eks_ngw_1b.id
  }

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-rtb-private-1b"
  })
}