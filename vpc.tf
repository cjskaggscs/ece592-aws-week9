resource "aws_vpc" "week9-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "week9"
  }
}

