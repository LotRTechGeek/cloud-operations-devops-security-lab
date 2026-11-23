terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


resource "aws_cloudwatch_metric_alarm" "linux_lab_high_cpu" {
  alarm_name          = "linux-lab-high-cpu"
  alarm_description   = "Alert when Linux Lab EC2 CPU utilization exceeds 70 percent"
  comparison_operator = "GreaterThanThreshold"

  metric_name = "CPUUtilization"
  namespace   = "AWS/EC2"
  statistic   = "Average"

  period             = 300
  evaluation_periods = 1
  threshold          = var.cpu_alarm_threshold

  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_actions = [
    var.sns_topic_arn
  ]

  tags = {
    Project     = "Cloud Operations DevOps Security Lab"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
