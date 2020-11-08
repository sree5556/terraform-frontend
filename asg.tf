resource "aws_launch_template" "" {
  image_id = ""
  instance_type = ""
}
resource "aws_autoscaling_group" "" {
  availability_zones = ["us-east-2"]
  max_size = 0
  min_size = 0
}