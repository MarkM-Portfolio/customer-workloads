resource "aws_security_group" "floodre_custom_broker_sg" {
  name        = "floodre-custom-broker-sg"
  description = "Allow inbound access on custom ports to BRK01 server"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Inbound SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Inbound SMTP access"
    from_port   = 25
    to_port     = 25
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Inbound secure SMTP access"
    from_port   = 587
    to_port     = 587
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "floodre-custom-broker-sg"
  }
}

resource "aws_security_group" "floodre_custom_sqluat01_sg" {
  name        = "floodre-custom-sqluat01-sg"
  description = "Allow inbound access on custom ports to SQLUAT01 server"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Inbound access on port 40002"
    from_port   = 40002
    to_port     = 40002
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Inbound access on port 40002"
    from_port   = 4433
    to_port     = 4433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "floodre-custom-sqluat01-sg"
  }
}
