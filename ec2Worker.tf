resource "aws_instance" "week9-worker-vm" {
  ami                    = "ami-02e136e904f3da870"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.week9-pri-a.id
  vpc_security_group_ids = [aws_security_group.week9-ssh-pri-sg.id]
  key_name               = "ECE592a_skaggsc"

  iam_instance_profile = aws_iam_instance_profile.week9-iamProfile.id

  tags = {
    Name = "week9-worker-vm"
  }
}
