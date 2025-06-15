resource "aws_route_table_association" "rtb_association_1a" {
  subnet_id      = aws_subnet.ctf_eks_subnet_public_1a.id
  route_table_id = aws_route_table.ctf_eks_route_table_public.id
}

resource "aws_route_table_association" "rtb_association_1b" {
  subnet_id      = aws_subnet.ctf_eks_subnet_public_1b.id
  route_table_id = aws_route_table.ctf_eks_route_table_public.id
}