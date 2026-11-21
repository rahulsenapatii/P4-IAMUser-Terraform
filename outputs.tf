output "iam_user_name" {
  description = "Created IAM user name"
  value       = aws_iam_user.s3_readonly_user.name
}

output "iam_user_arn" {
  description = "ARN of the created IAM user"
  value       = aws_iam_user.s3_readonly_user.arn
}

output "attached_policy_arn" {
  description = "ARN of the attached S3 read-only policy"
  value       = aws_iam_user_policy_attachment.s3_readonly_attach.policy_arn
}
