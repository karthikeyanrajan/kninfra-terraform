resource "aws_instance" "public1_instance" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet-1a.id
  key_name                    = aws_key_pair.karthikeyanrajan.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow.id]
  tags = {
    Name = "public instance-1"
  }
}

resource "aws_instance" "public2_instance_2" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet-1b.id
  key_name                    = aws_key_pair.karthikeyanrajan.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow.id]
  tags = {
    Name = "public instance -2"
  }
}

resource "aws_instance" "private_instance_1" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet-1c.id
  key_name                    = aws_key_pair.karthikeyanrajan.id
  vpc_security_group_ids      = [aws_security_group.allow.id]
  associate_public_ip_address = false
  tags = {
    Name = "private instance"
  }
}
