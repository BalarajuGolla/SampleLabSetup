resource "aws_subnet" "sm-project-subnet_1" {
  vpc_id     = aws_vpc.sm-project.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "sm-project-subnet_1"
  }
}
