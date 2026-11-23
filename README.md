# Cloud Operations, DevOps & Security Lab

## Overview

This project extends my Linux Infrastructure Lab by introducing cloud operations, security monitoring, audit logging, automated alerting, Infrastructure as Code, CI/CD, and DevSecOps practices using AWS, Terraform, GitHub Actions, and Trivy.

The goal is to build practical hands-on experience in operating, monitoring, securing, and automating cloud infrastructure while applying security and Infrastructure as Code best practices.

---

## Technologies

- AWS EC2
- Amazon Linux 2023
- AWS IAM
- AWS CloudTrail
- Amazon CloudWatch
- Amazon SNS
- AWS Budgets
- Terraform
- GitHub Actions
- Trivy
- Git
- GitHub

---

## Project Objectives

- Establish and document a cloud security baseline
- Review identity and access management controls
- Implement account-wide audit logging
- Monitor infrastructure health and performance
- Configure automated operational alerts
- Introduce cost monitoring
- Manage monitoring configuration using Terraform
- Build an automated Terraform CI pipeline
- Integrate Infrastructure as Code security scanning
- Demonstrate a practical DevSecOps remediation workflow

---

## Current Status

- [x] Security Baseline Assessment
- [x] CloudTrail Implementation
- [x] CloudWatch Monitoring
- [x] CloudWatch CPU Alarm
- [x] SNS Email Alerting
- [x] AWS Budget Monitoring
- [x] Terraform Monitoring Configuration
- [x] GitHub Actions CI Pipeline
- [x] Terraform Format Validation
- [x] Terraform Configuration Validation
- [x] Trivy Infrastructure as Code Security Scanning
- [x] DevSecOps Security Gate Testing
- [x] Security Misconfiguration Remediation
- [ ] Additional Monitoring Resources as Infrastructure as Code
- [ ] Additional CloudWatch Security Monitoring
- [ ] Architecture Diagram

---

## Security Baseline Assessment

A security baseline assessment was performed against the existing Linux Infrastructure Lab before implementing additional monitoring and security controls.

Areas reviewed included:

- AWS IAM configuration
- Root account MFA
- IAM user MFA
- Access key usage
- IAM permissions
- EC2 Security Groups
- SSH configuration
- SSH key authentication
- Root login configuration
- Linux patch status

### Key Findings

- MFA enabled for the AWS root account
- MFA enabled for the administrative IAM user
- Small IAM identity footprint
- SSH access restricted to a trusted IP address
- Password-based SSH authentication disabled
- SSH key authentication enabled
- No unnecessary management or database ports publicly exposed
- Linux update status reviewed
- Administrative permissions identified as an area for future least-privilege review

The assessment established the security posture of the environment before introducing additional auditing, monitoring, and DevSecOps controls.

---

## AWS CloudTrail Audit Logging

AWS CloudTrail was implemented to provide visibility into account activity and infrastructure changes.

### Configuration

- Multi-region trail
- Management event logging
- Read and write event capture
- Amazon S3 log storage
- Audit event history verification

CloudTrail successfully recorded infrastructure lifecycle and configuration activity including:

- EC2 instance operations
- Security Group changes
- Elastic IP operations
- CloudTrail configuration activity
- S3 configuration activity

This provides an audit trail that can support operational investigation, change tracking, and security analysis.

---

## CloudWatch Monitoring Dashboard

An Amazon CloudWatch dashboard was created to provide operational visibility into the Linux Infrastructure Lab.

### Metrics Monitored

- EC2 CPU Utilization
- Network In
- Network Out
- EC2 Status Checks
- CPU Credit Balance

The dashboard provides a central view of infrastructure performance, health, and network activity.

---

## CloudWatch Alarms & SNS Alerting

Proactive monitoring was implemented using Amazon CloudWatch Alarms and Amazon SNS.

### CPU Alarm

**Alarm:** `linux-lab-high-cpu`

Configuration:

- Metric: CPUUtilization
- Threshold: Greater than 70%
- Evaluation period: 5 minutes

### Notifications

The alarm is integrated with an Amazon SNS topic that delivers email notifications when the configured alarm threshold is exceeded.

This changes monitoring from a passive dashboard into an automated alerting system.

---

## AWS Budget Monitoring

AWS Budget monitoring was configured to improve visibility of cloud expenditure.

A monthly cost budget and threshold notification provide early warning when spending reaches the configured level.

This introduces cost awareness alongside operational and security monitoring and helps reduce the risk of unexpected cloud expenditure.

---

## Terraform Infrastructure as Code

Terraform configuration was introduced to begin managing Project 3 monitoring resources through Infrastructure as Code.

The current configuration defines the CloudWatch CPU alarm and uses input variables to separate reusable infrastructure configuration from environment-specific values.

### Terraform Structure

```text
Terraform/
├── .terraform.lock.hcl
├── monitoring.tf
└── variables.tf