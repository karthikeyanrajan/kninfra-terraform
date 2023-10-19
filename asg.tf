# ASG

resource "aws_autoscaling_group" "card-website-asg" {
  name                = "knasg"
  vpc_zone_identifier = [aws_subnet.subnet-1a.id, aws_subnet.subnet-1b.id]
  desired_capacity    = 2
  max_size            = 4
  min_size            = 1

  launch_template {
    id      = aws_launch_template.knlaunchtemplete.id
    version = "$Latest"
  }
}
