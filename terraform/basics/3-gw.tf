resource "aws_internet_gateway" "igw-main" {
  vpc_id = aws_vpc.vpc-main.id

  tags = {
    Name = "igw-main"
    ManagedBy = "terraform"
  }
}

resource "aws_nat_gateway" "ngw-main" {
  subnet_id = aws_subnet.sbn-1a-public.id

  tags = {
    Name = "ngw-main"
    ManagedBy = "terraform"
  }

  depends_on = [aws_internet_gateway.igw-main]
}