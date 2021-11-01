resource "aws_internet_gateway" "week9-igw" {
  vpc_id = aws_vpc.week9-vpc.id

  tags = {
    Name = "week9-igw"
  }
}
