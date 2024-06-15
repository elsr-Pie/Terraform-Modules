module "ec2_instance" {
  source  = "./ec2s"


  ec2-instance_type         = "var.ec2-instance_type"
  ec2-count = "var.ec2-count"
  ec2-ami = "var.ec2-ami"
  tag-name = "var.tag-name"
