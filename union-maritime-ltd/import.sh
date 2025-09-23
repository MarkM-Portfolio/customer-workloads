#!/bin/bash

#import EU33APP01 instance
echo starting EU33APP01 Imports
terraform state rm 'module.app["EU33APP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33APP01"].aws_instance.this[0]' i-0093888fb48bd98bf

echo EU33APP01 imports executed

#import EU33DB02 instance
echo starting EU33DB02 Imports
terraform state rm 'module.app["EU33DB02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_instance.this[0]' i-0b52f94958e12f8cd

terraform state rm 'module.app["EU33DB02"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_ebs_volume.this["sdb"]' vol-030377f54be2ebdc5
terraform state rm 'module.app["EU33DB02"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-030377f54be2ebdc5:i-0b52f94958e12f8cd
terraform state rm 'module.app["EU33DB02"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_ebs_volume.this["sdc"]' vol-004354712764d3ab6
terraform state rm 'module.app["EU33DB02"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-004354712764d3ab6:i-0b52f94958e12f8cd
terraform state rm 'module.app["EU33DB02"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_ebs_volume.this["sdd"]' vol-0673ee532aa69928c
terraform state rm 'module.app["EU33DB02"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0673ee532aa69928c:i-0b52f94958e12f8cd
terraform state rm 'module.app["EU33DB02"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_ebs_volume.this["sde"]' vol-09cf9458ac0bdcde6
terraform state rm 'module.app["EU33DB02"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_volume_attachment.this["sde"]' /dev/sde:vol-09cf9458ac0bdcde6:i-0b52f94958e12f8cd
terraform state rm 'module.app["EU33DB02"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_ebs_volume.this["sdf"]' vol-07ca33c15f11ac49f
terraform state rm 'module.app["EU33DB02"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-07ca33c15f11ac49f:i-0b52f94958e12f8cd
terraform state rm 'module.app["EU33DB02"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_ebs_volume.this["sdg"]' vol-0d0ec25c3e8d038e7
terraform state rm 'module.app["EU33DB02"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB02"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0d0ec25c3e8d038e7:i-0b52f94958e12f8cd
echo EU33DB02 imports executed

#import EU33DB01 instance
echo starting EU33DB01 Imports
terraform state rm 'module.app["EU33DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_instance.this[0]' i-081d62b1706c738b2

terraform state rm 'module.app["EU33DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_ebs_volume.this["sdb"]' vol-0bd9be9ff16e578cd
terraform state rm 'module.app["EU33DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0bd9be9ff16e578cd:i-081d62b1706c738b2
terraform state rm 'module.app["EU33DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_ebs_volume.this["sdc"]' vol-0394e3f3fc7110d8c
terraform state rm 'module.app["EU33DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0394e3f3fc7110d8c:i-081d62b1706c738b2
terraform state rm 'module.app["EU33DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_ebs_volume.this["sdd"]' vol-0f6bccb1a2e7ce444
terraform state rm 'module.app["EU33DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0f6bccb1a2e7ce444:i-081d62b1706c738b2
terraform state rm 'module.app["EU33DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_ebs_volume.this["sde"]' vol-02abb8fc4064d0763
terraform state rm 'module.app["EU33DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-02abb8fc4064d0763:i-081d62b1706c738b2
terraform state rm 'module.app["EU33DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_ebs_volume.this["sdf"]' vol-08ea9426541d1403e
terraform state rm 'module.app["EU33DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU33DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-08ea9426541d1403e:i-081d62b1706c738b2
echo EU33DB01 imports executed


#End of command execution
echo Finished executing commands!