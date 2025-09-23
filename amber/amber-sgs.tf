resource "aws_security_group" "amber-custom-sql-sg" {
  name        = "amber-custom-sql-sg"
  description = "Allow inbound traffic to SQL servers"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Allow inbound traffic to SQL servers"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.50.136.103/32", "10.50.141.10/32", "10.50.136.68/32"]

  }

  ingress {
    description = "Allow inbound traffic to SQL servers"
    from_port   = 8543
    to_port     = 8543
    protocol    = "tcp"
    cidr_blocks = ["159.65.61.67/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "amber-custom-sql-sg"
  }

}


resource "aws_security_group" "amber-custom-dmz-sg" {
  name        = "amber-custom-dmz-sg"
  description = "This will allow the custom ports for Amber to DMZ"
  vpc_id      = data.aws_vpc.this.id

  ingress {

    description = "Inbound ports for idocs"
    from_port   = 8000
    to_port     = 8543
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "amber-custom-dmz-sg"
  }

}

resource "aws_security_group" "amber-custom-rds-sg" {
  name        = "amber-custom-rds-sg"
  description = "This will allow the custom ports for Amber to RDS"
  vpc_id      = data.aws_vpc.this.id

  ingress {

    description = "Inbound ports for RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "amber-custom-rds-sg"
  }

}

