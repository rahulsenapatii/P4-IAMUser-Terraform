variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "iam_user_name" {
  description = "Name of the IAM user to create"
  type        = string
  default     = "p4-s3-readonly-user"
}

variable "s3_read_policy_arn" {
  description = "ARN of the S3 read-only policy"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
