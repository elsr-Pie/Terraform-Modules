variable "ec2-ami" {
  type        = string
  default     = "ami-04b70fa74e45c3917"
  description = "The ID of the ami to use"
}

variable "ec2-instance_type" {
  type        = string
  default     = "t2.micro"
  description = "my ec2 type"
}

variable "ec2-count" {
  type        = number
  default     = 1
  description = "number of ec2 instances"
}

variable "tag-name" {
  type        = string
  default     = "devops-instance"
  description = "the tag"
}
