resource "aws_fsx_windows_file_system" "this" {
  storage_capacity    = var.storage_capacity
  subnet_ids          = var.subnet_ids
  throughput_capacity = var.throughput_capacity
  deployment_type     = var.deployment_type
  security_group_ids = [aws_security_group.fsx_sg.id]
  preferred_subnet_id = var.preferred_subnet_id

  self_managed_active_directory {
    dns_ips     = var.dns_ips
    domain_name = var.domain_name
    password    = var.password
    username    = var.username
  }

  tags = {
    Name = "${local.region}-${local.customer}-fsx"
  }
}

resource "aws_security_group" "fsx_sg" {
  name        = "${local.region}-fsx-sg"
  description = "SG for FSx"
  vpc_id      = data.aws_vpc.this.id

  tags = {
    Name = "${local.region}-fsx-sg"
  }
}

resource "aws_security_group_rule" "fsx_egress" {
  description       = "Open outbound"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.fsx_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "fsx_access_from_vpc" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.fsx_sg.id
  cidr_blocks       = [data.aws_vpc.this.cidr_block]
}

resource "aws_security_group" "dc_to_fsx_sg" {
  name        = "${local.region}-dc-to-fsx-sg"
  description = "Connection from DC to FSx"
  vpc_id      = data.aws_vpc.this.id

  tags = {
    Name = "${local.region}-dc-to-fsx-sg"
  }
}

resource "aws_security_group_rule" "dc_to_fsx_sg" {
  description       = "Open outbound"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.dc_to_fsx_sg.id
  source_security_group_id = aws_security_group.fsx_sg.id
}

resource "aws_security_group_rule" "dc_from_fsx_sg" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.dc_to_fsx_sg.id
  source_security_group_id  = aws_security_group.fsx_sg.id
}