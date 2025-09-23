data "aws_instances" "windows" {
  filter {
    name   = "tag:Patch Group"
    values = ["Window*"]
  }
}

data "aws_ebs_volumes" "volume" {
  filter {
    name   = "tag:scheduler:ebs-snapshot"
    values = ["Yes"]
  }
}