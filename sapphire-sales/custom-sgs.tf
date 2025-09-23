resource "aws_security_group" "custom-app01-sg" {
  name        = "custom-app01-sg"
  description = "Custom application sg for APP01"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Inbound access from custom ports"
    from_port   = 40003
    to_port     = 40004
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Inbound access from custom ports"
    from_port   = 85
    to_port     = 85
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "custom-app01-sg"
  }
}