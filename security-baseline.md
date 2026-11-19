# Security Baseline Assessment

Date: 19 November 2026

## IAM Review

### Findings

- Root MFA enabled
- IAM user MFA enabled
- Single IAM user (AndyT3)
- One active access key
- No stale credentials identified

### Security Considerations

- Administrative account currently has AdministratorAccess permissions.
- Suitable for a personal AWS lab environment.
- Future review of least-privilege permissions recommended.

---

## Security Group Review

### Inbound Rules

HTTP
- TCP 80
- Source: 0.0.0.0/0

SSH
- TCP 22
- Source: Trusted IP Address (/32)

### Findings

- SSH restricted to a single trusted source.
- Public access limited to web traffic.
- No unnecessary management ports exposed.

---

## SSH Configuration Review

### Password Authentication

PasswordAuthentication no

### Findings

- Password-based authentication disabled.
- SSH key authentication required.

---

## Root Login Review

### Configuration

PermitRootLogin prohibit-password

### Findings

- Root password login disabled.
- Supports secure default configuration.

---

## Linux Update Review

### Findings

- No pending package updates.
- New Amazon Linux release streams available.
- System currently patched within configured release version.

---

## Future Security Enhancements

- AWS CloudTrail
- AWS CloudWatch Monitoring
- SNS Security Alerts
- GitHub Actions
- tfsec
- IAM Least Privilege Review
- AWS Secrets Manager Investigation

## CloudTrail Implementation

Date: 19 November 2026

### Configuration

Trail Name:
cloud-operations-security-trail

Trail Type:
Multi-Region

Management Events:
- Read Events Enabled
- Write Events Enabled

Insights:
- Disabled

Log Storage:
- Amazon S3
- Server-side encryption enabled

### Purpose

Provides audit logging for account activity, infrastructure changes, resource modifications, and security-relevant events.

### Benefits

- Visibility of AWS account activity
- Support for security investigations
- Audit trail for infrastructure changes
- Improved cloud security posture

## CloudTrail Verification

### Validation Activities

CloudTrail successfully captured:

- Trail creation
- Logging activation
- S3 bucket creation
- S3 bucket policy modifications
- Encryption configuration

CloudTrail also recorded historical infrastructure events including:

- EC2 instance deployment
- Security Group creation
- Elastic IP allocation and association
- Instance termination
- Key Pair import

### Findings

CloudTrail is functioning correctly and recording account activity, resource modifications and infrastructure lifecycle events.

### Security Benefits

- Auditability
- Change tracking
- Event attribution
- Security investigations
- Operational visibility