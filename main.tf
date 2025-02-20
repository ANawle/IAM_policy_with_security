provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_policy" "example" {
  name        = "example-policy"
  description = "Example policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "s3:ListBuckets"
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = "s3:GetObject"
        Resource = "*"
      }
    ]
  })
}
