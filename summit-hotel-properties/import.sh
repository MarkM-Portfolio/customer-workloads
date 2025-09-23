#!/bin/bash

#import GEN2SMTADFS01 instance
echo starting GEN2SMTADFS01 Imports
terraform state rm 'module.app["GEN2SMTADFS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTADFS01"].aws_instance.this[0]' i-005a7be4ccccd6e7e

echo GEN2SMTADFS01 imports executed

#import GEN2SMTDMZ01 instance
echo starting GEN2SMTDMZ01 Imports
terraform state rm 'module.app["GEN2SMTDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTDMZ01"].aws_instance.this[0]' i-0f229042d3a38df72

echo GEN2SMTDMZ01 imports executed

#import GEN2SMTIOS01 instance
echo starting GEN2SMTIOS01 Imports
terraform state rm 'module.app["GEN2SMTIOS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTIOS01"].aws_instance.this[0]' i-0b541aa854483b395

echo GEN2SMTIOS01 imports executed

#import GEN2SMTRDS01 instance
echo starting GEN2SMTRDS01 Imports
terraform state rm 'module.app["GEN2SMTRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTRDS01"].aws_instance.this[0]' i-01408d3a53d4d221c

echo GEN2SMTRDS01 imports executed

#import GEN2SMTSQL01 instance
echo starting GEN2SMTSQL01 Imports
terraform state rm 'module.app["GEN2SMTSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_instance.this[0]' i-001f040a55ede2b8c

terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdb"]' vol-0b0087882133b9083
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0b0087882133b9083:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdc"]' vol-0eb87913b2e5d0561
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0eb87913b2e5d0561:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdd"]' vol-0a8cc026c6ec3896c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0a8cc026c6ec3896c:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sde"]' vol-04579d6ed4795836c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-04579d6ed4795836c:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdf"]' vol-074dcdd22959e6b48
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-074dcdd22959e6b48:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdg"]' vol-04496180715f7efc5
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-04496180715f7efc5:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdh"]' vol-0b5de79b637af1e47
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-0b5de79b637af1e47:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdi"]' vol-0177d92244fe44829
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdi"]' /dev/sdi:vol-0177d92244fe44829:i-001f040a55ede2b8c
terraform state rm 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdj"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_ebs_volume.this["sdj"]' vol-057c368149283c7e1
terraform state rm 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdj"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SMTSQL01"].aws_volume_attachment.this["sdj"]' /dev/sdj:vol-057c368149283c7e1:i-001f040a55ede2b8c
echo GEN2SMTSQL01 imports executed

#import US16DB01 instance
echo starting US16DB01 Imports
terraform state rm 'module.app["US16DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_instance.this[0]' i-0f19ff7b3c5cba6e8

terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sdb"]' vol-0300847a882ed50a1
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0300847a882ed50a1:i-0f19ff7b3c5cba6e8
terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sdc"]' vol-0abfc977e367df136
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0abfc977e367df136:i-0f19ff7b3c5cba6e8
terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sdd"]' vol-0d9edad531633dbb8
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0d9edad531633dbb8:i-0f19ff7b3c5cba6e8
terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sde"]' vol-0a05d292e69876c3d
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0a05d292e69876c3d:i-0f19ff7b3c5cba6e8
terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sdf"]' vol-05531b135bc18fc0b
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-05531b135bc18fc0b:i-0f19ff7b3c5cba6e8
terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sdg"]' vol-06c2290212a5ea302
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-06c2290212a5ea302:i-0f19ff7b3c5cba6e8
terraform state rm 'module.app["US16DB01"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_ebs_volume.this["sdh"]' vol-0583760bbc1a2c7e7
terraform state rm 'module.app["US16DB01"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DB01"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-0583760bbc1a2c7e7:i-0f19ff7b3c5cba6e8
echo US16DB01 imports executed

#import US16DMZ01 instance
echo starting US16DMZ01 Imports
terraform state rm 'module.app["US16DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US16DMZ01"].aws_instance.this[0]' i-0b6655d71bae19532

echo US16DMZ01 imports executed

#import US16RDS01 instance
echo starting US16RDS01 Imports
terraform state rm 'module.app["US16RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["US16RDS01"].aws_instance.this[0]' i-031135c4f4e96bce8

echo US16RDS01 imports executed


#End of command execution
echo Finished executing commands!