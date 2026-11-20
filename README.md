# Cloud Operations, DevOps & Security Lab

## Overview

This project extends my Linux Infrastructure Lab by introducing cloud monitoring, security, auditing, alerting, and DevOps automation.

The goal is to build practical experience in operational monitoring, cloud security, Infrastructure as Code (IaC), CI/CD pipelines, and security best practices using AWS and Terraform.

## Technologies

- AWS CloudWatch
- AWS CloudTrail
- AWS SNS
- Terraform
- GitHub Actions
- tfsec
- Amazon Linux 2023
- EC2

## Project Objectives

- Establish a security baseline
- Implement infrastructure monitoring
- Implement security auditing
- Create automated alerts
- Build Infrastructure as Code validation pipelines
- Introduce DevSecOps practices

## Current Status

- [ ] Security Baseline Assessment
- [ ] CloudTrail Implementation
- [ ] CloudWatch Monitoring
- [ ] SNS Alerting
- [ ] GitHub Actions CI Pipeline
- [ ] tfsec Integration
- [ ] Documentation & Architecture Diagrams

## CloudWatch Monitoring Dashboard

Implemented an Amazon CloudWatch dashboard to monitor operational health and performance of the Linux Lab environment.

Metrics monitored include:

- EC2 CPU Utilization
- Network Inbound Traffic
- Network Outbound Traffic
- EC2 Status Checks
- CPU Credit Balance

The dashboard provides real-time visibility into infrastructure performance and forms the foundation for future alerting and monitoring enhancements.

## CloudWatch Alarms & SNS

Implemented proactive monitoring using CloudWatch Alarms and Amazon SNS.

Current Alarm:

- linux-lab-high-cpu

Notification Method:

- Email via Amazon SNS

Purpose:

Provides automated alerting when defined infrastructure thresholds are exceeded.