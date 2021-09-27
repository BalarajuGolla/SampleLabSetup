resource "aws_internet_gateway" "sm-project-gw" {
  vpc_id = aws_vpc.sm-project.id

  tags = {
    Name = "sm-project-gw"
  }
}
