#!/bin/bash

#import EU65DB01 instance
echo starting EU65DB01 Imports
terraform state rm 'module.app["EU65DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_instance.this[0]' i-0d0bf8f65582ca397

terraform state rm 'module.app["EU65DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_ebs_volume.this["sdb"]' vol-005dffe6f3878c160
terraform state rm 'module.app["EU65DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-005dffe6f3878c160:i-0d0bf8f65582ca397
terraform state rm 'module.app["EU65DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_ebs_volume.this["sdc"]' vol-0853327d79133ee32
terraform state rm 'module.app["EU65DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0853327d79133ee32:i-0d0bf8f65582ca397
terraform state rm 'module.app["EU65DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_ebs_volume.this["sdd"]' vol-0be492793571008aa
terraform state rm 'module.app["EU65DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0be492793571008aa:i-0d0bf8f65582ca397
terraform state rm 'module.app["EU65DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_ebs_volume.this["sde"]' vol-0779b3af509ce80a8
terraform state rm 'module.app["EU65DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0779b3af509ce80a8:i-0d0bf8f65582ca397
echo EU65DB01 imports executed

#import EU65DMZ01 instance
echo starting EU65DMZ01 Imports
terraform state rm 'module.app["EU65DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65DMZ01"].aws_instance.this[0]' i-0eae4154bbca9eaa8

echo EU65DMZ01 imports executed

#import EU65RDS01 instance
echo starting EU65RDS01 Imports
terraform state rm 'module.app["EU65RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65RDS01"].aws_instance.this[0]' i-0b7bcf1aad7631938

terraform state rm 'module.app["EU65RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65RDS01"].aws_ebs_volume.this["sdb"]' vol-073449392d3138160
terraform state rm 'module.app["EU65RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU65RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-073449392d3138160:i-0b7bcf1aad7631938
echo EU65RDS01 imports executed


#End of command execution
echo Finished executing commands!