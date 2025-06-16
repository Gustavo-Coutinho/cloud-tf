# public: para uso do Internet Gateway
resource "aws_route_table_association" "rtb_association_public_1a" {
  subnet_id      = aws_subnet.ctf_eks_subnet_public_1a.id
  route_table_id = aws_route_table.ctf_eks_route_table_public.id
}
resource "aws_route_table_association" "rtb_association_public_1b" {
  subnet_id      = aws_subnet.ctf_eks_subnet_public_1b.id
  route_table_id = aws_route_table.ctf_eks_route_table_public.id
}

# private: para uso do NAT Gateway
resource "aws_route_table_association" "rtb_association_private_1a" {
  subnet_id      = aws_subnet.ctf_eks_subnet_private_1a.id
  route_table_id = aws_route_table.ctf_eks_route_table_private_1a.id
}
resource "aws_route_table_association" "rtb_association_private_1b" {
  subnet_id      = aws_subnet.ctf_eks_subnet_private_1b.id
  route_table_id = aws_route_table.ctf_eks_route_table_private_1b.id
}