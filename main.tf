provider "aws" {
  region = var.region
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Project = "demo-assignment"
    Name    = "My Demo VPC"
  }
}
# Create Public Subnet1
resource "aws_subnet" "pub_sub1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.pub_sub1_cidr_block
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true
  tags = {
    Project = "demo-assignment"
    Name    = "public_subnet1"
  }
}