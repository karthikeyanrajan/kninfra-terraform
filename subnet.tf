#Public subnet
resource "aws_subnet" "subnet-1a" {
  vpc_id                  = aws_vpc.knvpc.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true # true-->here if we mention it auto assign the ip when instance launch if not it will not  or we can controll it on instance setting also
  tags = {
    Name = "subnet-one"
  }
}

resource "aws_subnet" "subnet-1b" {
  vpc_id                  = aws_vpc.knvpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet-two"
  }
}

resource "aws_subnet" "subnet-1c" {
  vpc_id                  = aws_vpc.knvpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false #false means it won assign public ip default it is no

  tags = {
    Name = "subnet-three"
  }
}
