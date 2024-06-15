resource "aws_instance" "multiples" {
  ami           = var.ec2-ami
  instance_type = var.ec2-instance_type
  count         = var.ec2-count

  tags = {
    Name = var.tag-name
  }
}
