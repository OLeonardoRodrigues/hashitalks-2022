output "vpc_id" {
  description = "The ID of the VPC."
  value       = try(aws_vpc.this[0].id, "")
}

output "vpc_arn" {
  description = "The ARN of the VPC."
  value       = try(aws_vpc.this[0].arn, "")
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC."
  value       = try(aws_vpc.this[0].cidr_block, "")
}
