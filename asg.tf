//inorder to create auto-scaling-group -- u requiredd to do lunch-template
resource "aws_launch_template" "template" {
  name = "frontend"
  image_id = data.aws_ami.nginx-ami.id
  instance_type = var.INSTANCE_TYPE
  key_name = var.KEY_NAME
  vpc_security_group_ids = [aws_security_group.allow-frontend-instance.id]  # have to open 22 port to get connection so to create security groups--sg.tf
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "test"
    }
  }
}

resource "aws_autoscaling_group" "asg" {
  max_size = 0
  min_size = 0
}