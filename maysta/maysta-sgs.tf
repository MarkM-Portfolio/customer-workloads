resource "aws_security_group" "maysta-custom-dmz-sg" {
  name        = "maysta-custom-dmz-sg"
  description = "Allow inbound traffic to DMZ server"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Allow inbound traffic to DMZ server"
    from_port   = 8100
    to_port     = 8443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "maysta-custom-dmz-sg"
  }

}

resource "aws_security_group" "maysta-custom-brk-sg" {
  name        = "maysta-custom-brk-sg"
  description = "Allow inbound traffic to BRK server on Port 25"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description     = "Inbound access for data subnets to app subnets"
    from_port       = 25
    to_port         = 25
    protocol        = "tcp"
    security_groups = [local.sg.baseline_data]
  }

  tags = {
    Name = "maysta-custom-brk-sg"
  }

}
