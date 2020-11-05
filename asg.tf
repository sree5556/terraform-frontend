resource "aws_ami" "example" {
  name                = "terraform-example"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = 8
  }
}

resource "aws_ami_from_instance" "example" {
  name               = "terraform-example"
  source_instance_id = "i-xxxxxxxx"
}