resource "aws_route_table" "rtb-public" {
  vpc_id = aws_vpc.vpc-main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-main.id
  }

  tags = {
    Name = "rtb-public"
    ManagedBy = "terraform"
  }
}

resource "aws_route_table_association" "rtba-1-public" {
  subnet_id = aws_subnet.sbn-1a-public.id
  route_table_id = aws_route_table.rtb-public.id
}

resource "aws_route_table_association" "rtba-2-public" {
  subnet_id = aws_subnet.sbn-1b-public.id
  route_table_id = aws_route_table.rtb-public.id
}