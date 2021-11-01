resource "aws_security_group" "week9-ssh-pri-sg" {
  name        = "week9-ssh-pri-sg"
  description = "Allow SSH from bastion"
  vpc_id      = aws_vpc.week9-vpc.id

  ingress = [
    {
      description      = "Bastion to host SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = []
      security_groups  = [aws_security_group.week9-ssh-sg.id]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      self             = false
    }
  ]
}
