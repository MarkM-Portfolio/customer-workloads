resource "aws_eip" "this" {
  count = length(data.aws_subnet_ids.data.ids)

  vpc = true

  tags = merge(
    {
      Name = "eip-${local.region}-${local.environment}-${local.customer}-${count.index + 1}"
    },
  )

  provider = aws.networking-account
}

module "nlb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "6.4.0"

  name               = "${local.customer}-nlb"
  load_balancer_type = "network"

  vpc_id = data.aws_vpc.networking.id

  subnet_mapping = [for i, eip in aws_eip.this : { allocation_id : eip.id, subnet_id : tolist(data.aws_subnet_ids.data.ids)[i] }]

  providers = {
    aws = aws.networking-account
  }
}
