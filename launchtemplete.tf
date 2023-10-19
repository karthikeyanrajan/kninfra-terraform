#Launch Templete
resource "aws_launch_template" "knlaunchtemplete" {
  image_id               = "ami-053b0d53c279acc90"
  key_name               = aws_key_pair.karthikeyanrajan.id
  vpc_security_group_ids = [aws_security_group.allow.id]
  instance_type          = "t2.micro"
  user_data              = filebase64("web.sh")

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "kninstancevia-asg"
    }
  }

}

# use the above Templete
# if we not mentioned map public on launch on the subnet setting the machine wil not get the auto public ip 

# or  use the below Templete

# resource "aws_launch_template" "knlaunchtemplete" {
#   image_id = "ami-053b0d53c279acc90"
#   key_name = aws_key_pair.karthikeyanrajan.id
#   instance_type = "t2.micro"
#   user_data = filebase64("web.sh")

#   network_interfaces {
#     associate_public_ip_address = true               # this willl auto update the public ip on launch
#     security_groups = [aws_security_group.allow.id]
#   }

#   tag_specifications {
#     resource_type = "instance"
#     tags = {
#       Name = "kninstanmevia-asg"
#     }
#   }
# }

