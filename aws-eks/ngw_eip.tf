resource "aws_eip" "ctf_eks_ngw_eip_1a" {
  domain = "vpc"
  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-eip-1a"
  })
}
resource "aws_eip" "ctf_eks_ngw_eip_1b" {
  domain = "vpc"
  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-eip-1b"
  })
}
resource "aws_nat_gateway" "ctf_eks_ngw_1a" {
  allocation_id = aws_eip.ctf_eks_ngw_eip_1a.id
  subnet_id     = aws_subnet.ctf_eks_subnet_public_1a.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-ngw-1a"
  })
  depends_on = [aws_internet_gateway.ctf_eks_igw]
}
resource "aws_nat_gateway" "ctf_eks_ngw_1b" {
  allocation_id = aws_eip.ctf_eks_ngw_eip_1b.id
  subnet_id     = aws_subnet.ctf_eks_subnet_public_1b.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-ngw-1b"
  })
  depends_on = [aws_internet_gateway.ctf_eks_igw]
}