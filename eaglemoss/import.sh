#!/bin/bash

#import EU18DB01 instance
echo starting EU18DB01 Imports
terraform state rm 'module.app["EU18DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_instance.this[0]' i-0346862629cd34fc0

terraform state rm 'module.app["EU18DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_ebs_volume.this["sdb"]' vol-047c187e0b7b40144
terraform state rm 'module.app["EU18DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-047c187e0b7b40144:i-0346862629cd34fc0
terraform state rm 'module.app["EU18DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_ebs_volume.this["sdc"]' vol-0ab7a3b4d82e3ee7a
terraform state rm 'module.app["EU18DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0ab7a3b4d82e3ee7a:i-0346862629cd34fc0
terraform state rm 'module.app["EU18DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_ebs_volume.this["sdd"]' vol-012e2817f2ac3fa40
terraform state rm 'module.app["EU18DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-012e2817f2ac3fa40:i-0346862629cd34fc0
terraform state rm 'module.app["EU18DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_ebs_volume.this["sde"]' vol-0b1ecf836b4a130a5
terraform state rm 'module.app["EU18DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0b1ecf836b4a130a5:i-0346862629cd34fc0
terraform state rm 'module.app["EU18DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_ebs_volume.this["sdf"]' vol-0595bb03a9d16861b
terraform state rm 'module.app["EU18DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0595bb03a9d16861b:i-0346862629cd34fc0
terraform state rm 'module.app["EU18DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_ebs_volume.this["sdg"]' vol-00101ed189faa2753
terraform state rm 'module.app["EU18DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-00101ed189faa2753:i-0346862629cd34fc0
echo EU18DB01 imports executed

#import EU18RDS02 instance
echo starting EU18RDS02 Imports
terraform state rm 'module.app["EU18RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18RDS02"].aws_instance.this[0]' i-0ce1ed270e8aa8732

terraform state rm 'module.app["EU18RDS02"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18RDS02"].aws_ebs_volume.this["sdb"]' vol-01d62c108f12d473c
terraform state rm 'module.app["EU18RDS02"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18RDS02"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-01d62c108f12d473c:i-0ce1ed270e8aa8732
echo EU18RDS02 imports executed

#import EU18RDS01 instance
echo starting EU18RDS01 Imports
terraform state rm 'module.app["EU18RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18RDS01"].aws_instance.this[0]' i-053f5873b01c46bf5

terraform state rm 'module.app["EU18RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18RDS01"].aws_ebs_volume.this["sdb"]' vol-08dd7f570eafb232c
terraform state rm 'module.app["EU18RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU18RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-08dd7f570eafb232c:i-053f5873b01c46bf5
echo EU18RDS01 imports executed


#End of command execution
echo Finished executing commands!