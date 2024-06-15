#This is my role
resource "aws_iam_role" "devops_role" {
  name = "dev_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name = "demo-role"
  }
}

#This is my policy
resource "aws_iam_policy" "devops-policy" {
  name        = "dev_policy"
  description = "My iam policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

#This is my iam group
resource "aws_iam_group" "dev-developers" {
  name = "dev-group"
}

#This is my iam user
resource "aws_iam_user" "paps" {
  name = "Yaw"
}
