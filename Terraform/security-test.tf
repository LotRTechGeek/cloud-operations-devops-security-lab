# DELIBERATELY INSECURE RESOURCE
# Used only to demonstrate IaC security scanning.
# DO NOT APPLY.

resource "aws_security_group" "insecure_test" {
  name        = "insecure-security-test"
  description = "Deliberately insecure resource for Trivy CI testing"

  ingress {
    description = "Deliberately exposed SSH for security scanner testing"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}