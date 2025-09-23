#!/bin/bash

#import EU04DB01 instance
echo starting EU04DB01 Imports
terraform state rm 'module.ec2["EU04DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_instance.this[0]' i-0bc8c2ca12d41f2fc

terraform state rm 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdb"]' vol-073271417de5e5ab8
terraform state rm 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-073271417de5e5ab8:i-0bc8c2ca12d41f2fc
terraform state rm 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdc"]' vol-06f286a90f459acdc
terraform state rm 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-06f286a90f459acdc:i-0bc8c2ca12d41f2fc
terraform state rm 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdd"]' vol-002517ba59ba8eeef
terraform state rm 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-002517ba59ba8eeef:i-0bc8c2ca12d41f2fc
terraform state rm 'module.ec2["EU04DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_ebs_volume.this["sde"]' vol-0bc8ab3f90183b567
terraform state rm 'module.ec2["EU04DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0bc8ab3f90183b567:i-0bc8c2ca12d41f2fc
terraform state rm 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_ebs_volume.this["sdf"]' vol-0df706d5bdc8ae51d
terraform state rm 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0df706d5bdc8ae51d:i-0bc8c2ca12d41f2fc
echo EU04DB01 imports executed

#import EU04RDS01 instance
echo starting EU04RDS01 Imports
terraform state rm 'module.ec2["EU04RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU04RDS01"].aws_instance.this[0]' i-0efd36b875107a87c

echo EU04RDS01 imports executed


#End of command execution
echo Finished executing commands!