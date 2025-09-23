#!/bin/bash

#import EU63APP01 instance
echo starting EU63APP01 Imports
terraform state rm 'module.ec2["EU63APP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63APP01"].aws_instance.this[0]' i-082fd1b58df62e367

terraform state rm 'module.ec2["EU63APP01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63APP01"].aws_ebs_volume.this["sdb"]' vol-0f1ae917d150d7f77
terraform state rm 'module.ec2["EU63APP01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63APP01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0f1ae917d150d7f77:i-082fd1b58df62e367
terraform state rm 'module.ec2["EU63APP01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63APP01"].aws_ebs_volume.this["sdc"]' vol-070d02438758facd6
terraform state rm 'module.ec2["EU63APP01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63APP01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-070d02438758facd6:i-082fd1b58df62e367
echo EU63APP01 imports executed

#import EU63DB01 instance
echo starting EU63DB01 Imports
terraform state rm 'module.ec2["EU63DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DB01"].aws_instance.this[0]' i-0f2e0dd284d961105

terraform state rm 'module.ec2["EU63DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DB01"].aws_ebs_volume.this["sdb"]' vol-01db730055d8aab9a
terraform state rm 'module.ec2["EU63DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-01db730055d8aab9a:i-0f2e0dd284d961105
terraform state rm 'module.ec2["EU63DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DB01"].aws_ebs_volume.this["sdc"]' vol-0f5f06364911fdb9c
terraform state rm 'module.ec2["EU63DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0f5f06364911fdb9c:i-0f2e0dd284d961105
echo EU63DB01 imports executed

#import EU63DMZ01 instance
echo starting EU63DMZ01 Imports
terraform state rm 'module.ec2["EU63DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DMZ01"].aws_instance.this[0]' i-0e80e6f2da5e835da

terraform state rm 'module.ec2["EU63DMZ01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DMZ01"].aws_ebs_volume.this["sdb"]' vol-088b5a0bd398a373f
terraform state rm 'module.ec2["EU63DMZ01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63DMZ01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-088b5a0bd398a373f:i-0e80e6f2da5e835da
echo EU63DMZ01 imports executed

#import EU63RDS01 instance
echo starting EU63RDS01 Imports
terraform state rm 'module.ec2["EU63RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63RDS01"].aws_instance.this[0]' i-0e7ca3aa11eaa3c95

terraform state rm 'module.ec2["EU63RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63RDS01"].aws_ebs_volume.this["sdb"]' vol-09fc44aa61d8f98bf
terraform state rm 'module.ec2["EU63RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU63RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-09fc44aa61d8f98bf:i-0e7ca3aa11eaa3c95
echo EU63RDS01 imports executed


#End of command execution
echo Finished executing commands!

