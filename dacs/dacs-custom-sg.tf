resource "aws_security_group" "dacs-custom-baseline-app01-sg" {
  name        = "dacs-custom-baseline-app01-sg"
  description = "Custom baseline application sg for DACS GEN2DACSAPP01"
  vpc_id      = data.aws_vpc.this.id

  # rule1 - ingress with self
  ingress {
    description = "Ingress with self"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
  }

  # rule2 - inbound access from the VPC in the management account
  ingress {
    description = "Inbound access from VPC in Management account"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["172.30.0.0/16"]
  }

  # rule3 - inbound HTTPS access on specific access
  ingress {
    description = "Inbound HTTPS access on specific IPs"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["52.212.218.7/32", "54.72.220.167/32", "27.147.185.168/32", "144.48.119.21/32", "182.48.94.29/32", "103.156.126.56/32", "217.155.192.225/32", "103.147.183.24/32", "52.56.44.183/32", "81.106.139.49/32", "54.72.220.167/32"]
  }

  # rule4 - inbound HTTP access on specific access
  ingress {
    description = "Inbound HTTP access on specific IPs"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["81.106.139.49/32", "54.72.220.167/32", "52.56.44.183/32"]
  }


  # rule5 - open outbound
  egress {
    description = "Open outbound connection"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dacs-custom-baseline-app01-sg"
  }
}