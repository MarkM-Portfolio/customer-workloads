resource "aws_security_group" "salus-custom-hm-sg" {
  name        = "salus-custom-hm-sg"
  description = "Allow inbound traffic for SAP mobility"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description = "Allow inbound traffic for SAP mobility"
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "salus-custom-hm-sg"
  }

}


resource "aws_security_group" "salus-custom-hana-sg" {
  name        = "salus-custom-hana-sg"
  description = "Allow inbound traffic for SAP Analytics"
  vpc_id      = data.aws_vpc.this.id

  ingress {

    description = "Allow inbound traffic for SAP Analytics"
    from_port   = 40000
    to_port     = 40010
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Inbound access for Transaction manager from app layer"
    from_port   = 29292
    to_port     = 29293
    protocol    = "tcp"
    security_groups = [data.aws_security_group.baseline_app.id]
  }

  ingress {
    description = "Inbound access for Transaction manager from app layer"
    from_port   = 49152
    to_port     = 65535
    protocol    = "tcp"
    security_groups = [data.aws_security_group.baseline_app.id]
  }

  tags = {
    Name = "salus-custom-hana-sg"
  }

}

resource "aws_security_group" "salus-custom-dmz-sg" {
  name        = "salus-custom-dmz-sg"
  description = "Allow inbound traffic for B1-Dashboards"
  vpc_id      = data.aws_vpc.this.id

  ingress {

    description = "Allow inbound traffic for B1-Dashboards"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description     = "Inbound access for Transaction manager from data layer"
    from_port       = 29292
    to_port         = 29293
    protocol        = "tcp"
    security_groups = [data.aws_security_group.baseline_data.id]
  }

  ingress {
    description     = "Inbound access for Transaction manager from data layer"
    from_port       = 49152
    to_port         = 65535
    protocol        = "tcp"
    security_groups = [data.aws_security_group.baseline_data.id]
  }

  tags = {
    Name = "salus-custom-dmz-sg"
  }

}