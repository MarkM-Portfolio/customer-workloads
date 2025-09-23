#!/bin/bash

#import EU67DMZ01 instance
echo starting EU67DMZ01 Imports
terraform state rm 'module.ec2["EU67DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DMZ01"].aws_instance.this[0]' i-0fa9e9075d8b012d6

terraform state rm 'module.ec2["EU67DMZ01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DMZ01"].aws_ebs_volume.this["sdb"]' vol-0494b9a6813bd3b51
terraform state rm 'module.ec2["EU67DMZ01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DMZ01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0494b9a6813bd3b51:i-0fa9e9075d8b012d6
echo EU67DMZ01 imports executed

#import EU67DB01 instance
echo starting EU67DB01 Imports
terraform state rm 'module.ec2["EU67DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_instance.this[0]' i-01170b9e0f8268a07

terraform state rm 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdb"]' vol-0738611ef5eb44e73
terraform state rm 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0738611ef5eb44e73:i-01170b9e0f8268a07
terraform state rm 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdc"]' vol-0d501d8481a75b966
terraform state rm 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0d501d8481a75b966:i-01170b9e0f8268a07
terraform state rm 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdd"]' vol-0565851b4e78921fd
terraform state rm 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0565851b4e78921fd:i-01170b9e0f8268a07
terraform state rm 'module.ec2["EU67DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_ebs_volume.this["sde"]' vol-0555e5cc9e4b054f2
terraform state rm 'module.ec2["EU67DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0555e5cc9e4b054f2:i-01170b9e0f8268a07
terraform state rm 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdf"]' vol-08b4143e58f05e6a6
terraform state rm 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-08b4143e58f05e6a6:i-01170b9e0f8268a07
terraform state rm 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_ebs_volume.this["sdg"]' vol-0619d894ebf7d3e4a
terraform state rm 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0619d894ebf7d3e4a:i-01170b9e0f8268a07
echo EU67DB01 imports executed

#import EU67RDS01 instance
echo starting EU67RDS01 Imports
terraform state rm 'module.ec2["EU67RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67RDS01"].aws_instance.this[0]' i-09781409a6eb78426

terraform state rm 'module.ec2["EU67RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67RDS01"].aws_ebs_volume.this["sdb"]' vol-0ffd824ac1351fd6d
terraform state rm 'module.ec2["EU67RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU67RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0ffd824ac1351fd6d:i-09781409a6eb78426
echo EU67RDS01 imports executed


#End of command execution
echo Finished executing commands!
