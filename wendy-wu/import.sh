#!/bin/bash

#import EU70DB01 instance
echo starting EU70DB01 Imports
terraform state rm 'module.app["EU70DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_instance.this[0]' i-0ffed2d63099e4fe8

terraform state rm 'module.app["EU70DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_ebs_volume.this["sdb"]' vol-0a5dff75774471e3b
terraform state rm 'module.app["EU70DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0a5dff75774471e3b:i-0ffed2d63099e4fe8
terraform state rm 'module.app["EU70DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_ebs_volume.this["sdc"]' vol-06a4249296ed51188
terraform state rm 'module.app["EU70DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-06a4249296ed51188:i-0ffed2d63099e4fe8
terraform state rm 'module.app["EU70DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_ebs_volume.this["sdd"]' vol-07c1126c5c689b9b2
terraform state rm 'module.app["EU70DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-07c1126c5c689b9b2:i-0ffed2d63099e4fe8
terraform state rm 'module.app["EU70DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_ebs_volume.this["sde"]' vol-05fbf35d1c9350689
terraform state rm 'module.app["EU70DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-05fbf35d1c9350689:i-0ffed2d63099e4fe8
echo EU70DB01 imports executed

#import EU70DMZ01 instance
echo starting EU70DMZ01 Imports
terraform state rm 'module.app["EU70DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DMZ01"].aws_instance.this[0]' i-0d90736a178cb978e

terraform state rm 'module.app["EU70DMZ01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DMZ01"].aws_ebs_volume.this["sdb"]' vol-03cc96f25c669acb4
terraform state rm 'module.app["EU70DMZ01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DMZ01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-03cc96f25c669acb4:i-0d90736a178cb978e
echo EU70DMZ01 imports executed

#import EU70DMZ02 instance
echo starting EU70DMZ02 Imports
terraform state rm 'module.app["EU70DMZ02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70DMZ02"].aws_instance.this[0]' i-0416cf03324ab5f1f

echo EU70DMZ02 imports executed

#import EU70RDS01 instance
echo starting EU70RDS01 Imports
terraform state rm 'module.app["EU70RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70RDS01"].aws_instance.this[0]' i-031cfcb8d77aeef13

terraform state rm 'module.app["EU70RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70RDS01"].aws_ebs_volume.this["sdb"]' vol-0541bd53b058e1447
terraform state rm 'module.app["EU70RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU70RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0541bd53b058e1447:i-031cfcb8d77aeef13
echo EU70RDS01 imports executed


#End of command execution
echo Finished executing commands!