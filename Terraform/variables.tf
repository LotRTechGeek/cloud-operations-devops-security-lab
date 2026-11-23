variable "aws_region" {
  description = "AWS region containing the Linux Lab resources"
  type        = string
  default     = "eu-west-2"
}

variable "instance_id" {
  description = "EC2 instance ID for the Linux Lab"
  type        = string
}

variable "sns_topic_arn" {
  description = "SNS topic ARN used for CloudWatch alarm notifications"
  type        = string
}

variable "cpu_alarm_threshold" {
  description = "CPU utilization percentage that triggers the CloudWatch alarm"
  type        = number
  default     = 70
}

variable "environment" {
  description = "Environment name used for resource tagging"
  type        = string
  default     = "Lab"
}