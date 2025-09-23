# An example of how to deploy ec2 instance/s

module "patching" {
  source                         = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london                = "cron(0 30 23 ? * MON#2 *)"
  schedule_london_two            = "cron(0 30 23 ? * MON#2 *)"
}