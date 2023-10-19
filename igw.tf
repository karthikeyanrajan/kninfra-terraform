resource "aws_internet_gateway" "knigw" {
  vpc_id = aws_vpc.knvpc.id

  tags = {
    Name = "knigw"
  }
}
