terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "s3_readonly_user" {
  name = var.iam_user_name
}

resource "aws_iam_user_policy_attachment" "s3_readonly_attach" {
  user       = aws_iam_user.s3_readonly_user.name
  policy_arn = var.s3_read_policy_arn
}
