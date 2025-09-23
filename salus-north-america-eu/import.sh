#!/bin/bash

#import US15DB01 instance
echo starting US15DB01 Imports
terraform state rm 'module.app["US15DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_instance.this[0]' i-0b0233bc0626e4101

terraform state rm 'module.app["US15DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_ebs_volume.this["sdb"]' vol-04812a06ae5f56df7
terraform state rm 'module.app["US15DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-04812a06ae5f56df7:i-0b0233bc0626e4101
terraform state rm 'module.app["US15DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_ebs_volume.this["sdc"]' vol-07e1c93d882c37970
terraform state rm 'module.app["US15DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-07e1c93d882c37970:i-0b0233bc0626e4101
terraform state rm 'module.app["US15DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_ebs_volume.this["sdd"]' vol-0fb27ab386386219e
terraform state rm 'module.app["US15DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0fb27ab386386219e:i-0b0233bc0626e4101
terraform state rm 'module.app["US15DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_ebs_volume.this["sde"]' vol-06ea5c34df4f91efb
terraform state rm 'module.app["US15DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-06ea5c34df4f91efb:i-0b0233bc0626e4101
terraform state rm 'module.app["US15DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_ebs_volume.this["sdf"]' vol-0c733629a71ec02b0
terraform state rm 'module.app["US15DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["US15DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0c733629a71ec02b0:i-0b0233bc0626e4101
echo US15DB01 imports executed

#import US15RDS01 instance
echo starting US15RDS01 Imports
terraform state rm 'module.app["US15RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US15RDS01"].aws_instance.this[0]' i-0bfd4a42c1a15c39e

echo US15RDS01 imports executed


#End of command execution
echo Finished executing commands! 
