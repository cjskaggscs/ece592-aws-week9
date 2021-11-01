# Create the private routing table
resource "aws_route_table" "week9-pri-rt" {
    vpc_id = aws_vpc.week9-vpc.id

    route = []
    
    tags = {
        Name = "week9-pri-rt"
    }
}

# Create the routing table association for the first subnet
resource "aws_route_table_association" "week9-rtAssociation1" {
    subnet_id = aws_subnet.week9-pri-a.id
    route_table_id = aws_route_table.week9-pri-rt.id
}

# Create the routing table association for the second subnet
resource "aws_route_table_association" "week9-rtAssociation2" {
    subnet_id = aws_subnet.week9-pri-b.id
    route_table_id = aws_route_table.week9-pri-rt.id
}
