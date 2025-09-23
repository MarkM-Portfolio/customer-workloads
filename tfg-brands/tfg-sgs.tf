resource "aws_security_group" "tfg-custom-dmz01-sg" {
  name        = "tfg-custom-dmz01-sg"
  description = "Allow inbound traffic from database tier"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Allow inbound SSH from database tier"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description     = "Allow inbound SMTP traffic from database tier"
    from_port       = 25
    to_port         = 25
    protocol        = "tcp"
    security_groups = [data.aws_security_group.baseline_data.id]
  }

  ingress {
    description = "Allow inbound ThinManager connection"
    from_port   = 2031
    to_port     = 2031
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow inbound RFE service traffic"
    from_port   = 5002
    to_port     = 5002
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description     = "Allow inbound V1 connectivity from database tier"
    from_port       = 32000
    to_port         = 32000
    protocol        = "tcp"
    security_groups = [data.aws_security_group.baseline_app.id]
  }

  tags = {
    Name = "tfg-custom-dmz01-sg"
  }
}

resource "aws_security_group" "tfg-custom-dmz03-sg" {
  name        = "tfg-custom-dmz03-sg"
  description = "Allow inbound traffic from database tier"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Infor Sun Systems Custom TCP access"
    from_port   = 1443
    to_port     = 1443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Infor Custom Service"
    from_port   = 7443
    to_port     = 7443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Custom SSL"
    from_port   = 9443
    to_port     = 9443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Infor Custom Service"
    from_port   = 9543
    to_port     = 9543
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Infor Custom Service"
    from_port   = 9546
    to_port     = 9546
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tfg-custom-dmz03-sg"
  }
}



