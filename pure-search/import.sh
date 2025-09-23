#!/bin/bash

#import EU23DB01 instance
echo starting EU23DB01 Imports
terraform state rm 'module.app["EU23DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_instance.this[0]' i-0ed75e2060881751a

terraform state rm 'module.app["EU23DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_ebs_volume.this["sdb"]' vol-03a7d8b2cc35e0690
terraform state rm 'module.app["EU23DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-03a7d8b2cc35e0690:i-0ed75e2060881751a
terraform state rm 'module.app["EU23DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_ebs_volume.this["sdc"]' vol-078a0a6ca4be6684b
terraform state rm 'module.app["EU23DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-078a0a6ca4be6684b:i-0ed75e2060881751a
terraform state rm 'module.app["EU23DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_ebs_volume.this["sdd"]' vol-056cfc7a907ccfb67
terraform state rm 'module.app["EU23DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-056cfc7a907ccfb67:i-0ed75e2060881751a
terraform state rm 'module.app["EU23DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_ebs_volume.this["sde"]' vol-01b981e7f33060f32
terraform state rm 'module.app["EU23DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-01b981e7f33060f32:i-0ed75e2060881751a
terraform state rm 'module.app["EU23DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_ebs_volume.this["sdf"]' vol-0ea4ec54fdb104f89
terraform state rm 'module.app["EU23DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0ea4ec54fdb104f89:i-0ed75e2060881751a
terraform state rm 'module.app["EU23DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_ebs_volume.this["sdg"]' vol-08f15b1dc8daf3ef1
terraform state rm 'module.app["EU23DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-08f15b1dc8daf3ef1:i-0ed75e2060881751a
echo EU23DB01 imports executed

#import EU23RDS01 instance
echo starting EU23RDS01 Imports
terraform state rm 'module.app["EU23RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23RDS01"].aws_instance.this[0]' i-06595c1c4f231ad38

echo EU23RDS01 imports executed

#import EU23RDS02 instance
echo starting EU23RDS02 Imports
terraform state rm 'module.app["EU23RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU23RDS02"].aws_instance.this[0]' i-035ec034ebecb6cd8

echo EU23RDS02 imports executed


#End of command execution
echo Finished executing commands!