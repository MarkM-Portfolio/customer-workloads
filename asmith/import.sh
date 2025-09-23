#!/bin/bash

#import US06DB01 instance
echo starting US06DB01 Imports
terraform state rm 'module.ec2["US06DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_instance.this[0]' i-0da9e535015f4a009

terraform state rm 'module.ec2["US06DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_ebs_volume.this["sdb"]' vol-075eaadf2e590f7ea
terraform state rm 'module.ec2["US06DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-075eaadf2e590f7ea:i-0da9e535015f4a009
terraform state rm 'module.ec2["US06DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_ebs_volume.this["sdc"]' vol-0300b14bdf741f512
terraform state rm 'module.ec2["US06DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0300b14bdf741f512:i-0da9e535015f4a009
terraform state rm 'module.ec2["US06DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_ebs_volume.this["sdd"]' vol-0cade559aec98a320
terraform state rm 'module.ec2["US06DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0cade559aec98a320:i-0da9e535015f4a009
terraform state rm 'module.ec2["US06DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_ebs_volume.this["sde"]' vol-0444f990b27153341
terraform state rm 'module.ec2["US06DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0444f990b27153341:i-0da9e535015f4a009
terraform state rm 'module.ec2["US06DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_ebs_volume.this["sdf"]' vol-09a02bbed4e093b7f
terraform state rm 'module.ec2["US06DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-09a02bbed4e093b7f:i-0da9e535015f4a009
echo US06DB01 imports executed

#import US06RDS01 instance
echo starting US06RDS01 Imports
terraform state rm 'module.ec2["US06RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["US06RDS01"].aws_instance.this[0]' i-0cd6a188678434f18

echo US06RDS01 imports executed


#End of command execution
echo Finished executing commands!