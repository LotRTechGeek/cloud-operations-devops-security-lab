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