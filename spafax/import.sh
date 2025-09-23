#!/bin/bash

#import EU43DB01 instance
echo starting EU43DB01 Imports
terraform state rm 'module.app["EU43DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_instance.this[0]' i-0c2cfb3d080c179fc

terraform state rm 'module.app["EU43DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_ebs_volume.this["sdb"]' vol-0f416eb6c1e2e7c58
terraform state rm 'module.app["EU43DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0f416eb6c1e2e7c58:i-0c2cfb3d080c179fc
terraform state rm 'module.app["EU43DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_ebs_volume.this["sdc"]' vol-0060f02a996d9dec6
terraform state rm 'module.app["EU43DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0060f02a996d9dec6:i-0c2cfb3d080c179fc
terraform state rm 'module.app["EU43DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_ebs_volume.this["sdd"]' vol-09bec8283d19141f1
terraform state rm 'module.app["EU43DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-09bec8283d19141f1:i-0c2cfb3d080c179fc
terraform state rm 'module.app["EU43DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_ebs_volume.this["sde"]' vol-00e9f7d3c753560b2
terraform state rm 'module.app["EU43DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-00e9f7d3c753560b2:i-0c2cfb3d080c179fc
terraform state rm 'module.app["EU43DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_ebs_volume.this["sdf"]' vol-03523016c9b9caab8
terraform state rm 'module.app["EU43DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-03523016c9b9caab8:i-0c2cfb3d080c179fc
echo EU43DB01 imports executed

#import EU43RDS01 instance
echo starting EU43RDS01 Imports
terraform state rm 'module.app["EU43RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU43RDS01"].aws_instance.this[0]' i-0f52b372017e43f0a

echo EU43RDS01 imports executed

#import EU47DB01 instance
echo starting EU47DB01 Imports
terraform state rm 'module.app["EU47DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_instance.this[0]' i-057cbd1658873cf4a

terraform state rm 'module.app["EU47DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_ebs_volume.this["sdb"]' vol-0646d3df70cade667
terraform state rm 'module.app["EU47DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0646d3df70cade667:i-057cbd1658873cf4a
terraform state rm 'module.app["EU47DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_ebs_volume.this["sdc"]' vol-0308fe4a07019e98b
terraform state rm 'module.app["EU47DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0308fe4a07019e98b:i-057cbd1658873cf4a
terraform state rm 'module.app["EU47DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_ebs_volume.this["sdd"]' vol-018e60327bbcd0087
terraform state rm 'module.app["EU47DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-018e60327bbcd0087:i-057cbd1658873cf4a
terraform state rm 'module.app["EU47DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_ebs_volume.this["sde"]' vol-01add757f89d8784d
terraform state rm 'module.app["EU47DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-01add757f89d8784d:i-057cbd1658873cf4a
terraform state rm 'module.app["EU47DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_ebs_volume.this["sdf"]' vol-028f99052468bc8cf
terraform state rm 'module.app["EU47DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-028f99052468bc8cf:i-057cbd1658873cf4a
echo EU47DB01 imports executed

#import EU47RDS01 instance
echo starting EU47RDS01 Imports
terraform state rm 'module.app["EU47RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU47RDS01"].aws_instance.this[0]' i-0ae3eef466a0abab1

echo EU47RDS01 imports executed


#End of command execution
echo Finished executing commands!
