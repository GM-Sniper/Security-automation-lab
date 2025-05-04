resource "aws_security_group" "open_sg" {
  name        = "open_sg"
  description = "Security group with open ingress"
  vpc_id      = "vpc-123456"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

