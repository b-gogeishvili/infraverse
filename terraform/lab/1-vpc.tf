resource "aws_vpc" "vpc-main" {
  cidr_block = "172.16.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "vpc-main"
    ManagedBy = "terraform"
  }
}