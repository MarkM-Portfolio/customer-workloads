#!/bin/bash

#import US21DB01 instance
echo starting US21DB01 Imports
terraform state rm 'module.app["US21DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_instance.this[0]' i-0824199f1e9a633b3

terraform state rm 'module.app["US21DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_ebs_volume.this["sdb"]' vol-0967dbfa79e2cec43
terraform state rm 'module.app["US21DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0967dbfa79e2cec43:i-0824199f1e9a633b3
terraform state rm 'module.app["US21DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_ebs_volume.this["sdc"]' vol-01333fcb3d436d9d1
terraform state rm 'module.app["US21DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-01333fcb3d436d9d1:i-0824199f1e9a633b3
terraform state rm 'module.app["US21DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_ebs_volume.this["sdd"]' vol-0cfefdc1c1f96478a
terraform state rm 'module.app["US21DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0cfefdc1c1f96478a:i-0824199f1e9a633b3
terraform state rm 'module.app["US21DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_ebs_volume.this["sde"]' vol-03bfdb0a6b94fe28a
terraform state rm 'module.app["US21DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-03bfdb0a6b94fe28a:i-0824199f1e9a633b3
terraform state rm 'module.app["US21DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_ebs_volume.this["sdf"]' vol-0f36c06fb13c8b9cf
terraform state rm 'module.app["US21DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0f36c06fb13c8b9cf:i-0824199f1e9a633b3
terraform state rm 'module.app["US21DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_ebs_volume.this["sdg"]' vol-0043845babe8dec6b
terraform state rm 'module.app["US21DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0043845babe8dec6b:i-0824199f1e9a633b3
echo US21DB01 imports executed

#import US21RDS01 instance
echo starting US21RDS01 Imports
terraform state rm 'module.app["US21RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US21RDS01"].aws_instance.this[0]' i-09a552151e6c4df62

terraform state rm 'module.app["US21RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21RDS01"].aws_ebs_volume.this["sdb"]' vol-01c026d7171675e57
terraform state rm 'module.app["US21RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US21RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-01c026d7171675e57:i-09a552151e6c4df62
echo US21RDS01 imports executed

#import US21RDS02 instance
echo starting US21RDS02 Imports
terraform state rm 'module.app["US21RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US21RDS02"].aws_instance.this[0]' i-030fc00b951285c22

echo US21RDS02 imports executed


#End of command execution
echo Finished executing commands!
