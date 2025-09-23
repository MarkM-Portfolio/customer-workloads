#!/bin/bash

#import EU53DB01 instance
echo starting EU53DB01 Imports
terraform state rm 'module.app["EU53DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_instance.this[0]' i-09948b19408c8de39

terraform state rm 'module.app["EU53DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_ebs_volume.this["sdb"]' vol-09fdf9e25de61382b
terraform state rm 'module.app["EU53DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-09fdf9e25de61382b:i-09948b19408c8de39
terraform state rm 'module.app["EU53DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_ebs_volume.this["sdc"]' vol-0aa7d391e68ab2db2
terraform state rm 'module.app["EU53DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0aa7d391e68ab2db2:i-09948b19408c8de39
terraform state rm 'module.app["EU53DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_ebs_volume.this["sdd"]' vol-08bb6a411f5f64988
terraform state rm 'module.app["EU53DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-08bb6a411f5f64988:i-09948b19408c8de39
terraform state rm 'module.app["EU53DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_ebs_volume.this["sde"]' vol-0465e6ab29a5ef000
terraform state rm 'module.app["EU53DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0465e6ab29a5ef000:i-09948b19408c8de39
terraform state rm 'module.app["EU53DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_ebs_volume.this["sdf"]' vol-0ce4afc3d971dd2e0
terraform state rm 'module.app["EU53DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0ce4afc3d971dd2e0:i-09948b19408c8de39
echo EU53DB01 imports executed

#import EU53RDS01 instance
echo starting EU53RDS01 Imports
terraform state rm 'module.app["EU53RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU53RDS01"].aws_instance.this[0]' i-00a1282091d0bdafc

echo EU53RDS01 imports executed


#End of command execution
echo Finished executing commands!