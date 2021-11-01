resource "aws_subnet" "week9-pri-a" {
  vpc_id                  = aws_vpc.week9-vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "week9-pri-a"
  }
}
