resource "aws_security_group" "capita_custom_smtp_sg" {
  name        = "capita-custom-smtp-sg"
  description = "This allows access to the SMTP server"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Inbound ports for SFTP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Inbound ports for SFTP"
    from_port   = 2032
    to_port     = 2032
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "capita-custom-smtp-sg"
  }

}