resource "aws_subnet" "week9-sub-b" {
	vpc_id = aws_vpc.week9-vpc.id
	cidr_block = "10.0.2.0/24"
	availability_zone = "us-east-1b"
	map_public_ip_on_launch = "true"

	tags = {
		Name = "week9-sub-b"
	}
}
