resource "aws_security_group" "cpi_custom_hana_sg" {
  name        = "cpi_custom_hana_sg"
  description = "Custom HANA security group"
  vpc_id      = data.aws_vpc.this.id


  ingress {
    description = "Open custom ports"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Open custom ports"
    from_port   = 1443
    to_port     = 1443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Open custom ports"
    from_port   = 8100
    to_port     = 8100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Open custom ports"
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Open custom ports"
    from_port   = 40000
    to_port     = 40000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Open custom ports"
    from_port   = 40020
    to_port     = 40020
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  

  tags = {
    Name = "cpi_custom_hana_sg"
  }
}

resource "aws_security_group" "cpi_custom_smtp_sg" {
  name        = "cpi_custom_smtp_sg"
  description = "Custom SMTP security group"
  vpc_id      = data.aws_vpc.this.id


  ingress {
    description = "Open custom ports"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cpi_custom_smtp_sg"
  }
}


resource "aws_security_group" "int02_sg" {
  name        = "int02_sg"
  description = "Custom security group for int02"
  vpc_id      = data.aws_vpc.this.id


  ingress {
    description = "Inbound HTTPS access on specific IPs"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["34.89.105.44/32", "35.246.7.198/32", "34.105.132.149/32", "35.246.107.211/32", "35.197.206.139/32", "34.105.238.253/32", "35.234.148.240/32", "35.189.116.147/32", "35.242.143.152/32", "34.105.232.146/32", "35.234.150.74/32", "35.242.157.89/32", "35.197.221.53/32", "35.230.147.51/32", "34.105.200.37/32", "81.106.139.49/32"]
  }

  ingress {
    description = "Inbound HTTP access on specific IPs"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["34.89.105.44/32", "35.246.7.198/32", "34.105.132.149/32", "35.246.107.211/32", "35.197.206.139/32", "34.105.238.253/32", "35.234.148.240/32", "35.189.116.147/32", "35.242.143.152/32", "34.105.232.146/32", "35.234.150.74/32", "35.242.157.89/32", "35.197.221.53/32", "35.230.147.51/32", "34.105.200.37/32", "81.106.139.49/32"]
  }


  ingress {
    description = "Inbound HTTPS access on specific IPs"
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    cidr_blocks = ["34.89.105.44/32", "35.246.7.198/32", "34.105.132.149/32", "35.246.107.211/32", "35.197.206.139/32", "34.105.238.253/32", "35.234.148.240/32", "35.189.116.147/32", "35.242.143.152/32", "34.105.232.146/32", "35.234.150.74/32", "35.242.157.89/32", "35.197.221.53/32", "35.230.147.51/32", "34.105.200.37/32", "81.106.139.49/32"]
  }
  tags = {
    Name = "int02_sg"
  }
}

resource "aws_security_group" "int03_sg" {
  name        = "int03_sg"
  description = "Custom security group for int02"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Inbound HTTPS access on specific IPs"
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    cidr_blocks = ["81.106.139.49/32", "99.81.115.106/32", "54.194.202.188/32", "54.76.144.64/32"]
  }
  tags = {
    Name = "int03_sg"
  }
}
