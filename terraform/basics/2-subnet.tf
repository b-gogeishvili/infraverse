resource "aws_subnet" "sbn-1a-public" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = "172.16.0.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "sbn-1a-public"
    ManagedBy = "terraform"
  }
}

resource "aws_subnet" "sbn-1a-private" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = "172.16.1.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "sbn-1a-private"
    ManagedBy = "terraform"
  }
}

resource "aws_subnet" "sbn-1b-public" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = "172.16.2.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "sbn-1b-public"
    ManagedBy = "terraform"
  }
}

resource "aws_subnet" "sbn-1b-private" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = "172.16.3.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "sbn-1b-private"
    ManagedBy = "terraform"
  }
}