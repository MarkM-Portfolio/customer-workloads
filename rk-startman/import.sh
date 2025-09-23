#!/bin/bash

#import GEN2RKSAPP01 instance
echo starting GEN2RKSAPP01 Imports
terraform state rm 'module.app["GEN2RKSAPP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSAPP01"].aws_instance.this[0]' i-0c8a7ba17b742f525

echo GEN2RKSAPP01 imports executed

#import GEN2RKSAPP02 instance
echo starting GEN2RKSAPP02 Imports
terraform state rm 'module.app["GEN2RKSAPP02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSAPP02"].aws_instance.this[0]' i-072a75e3bba0d0d0b

echo GEN2RKSAPP02 imports executed

#import GEN2RKSAPP04 instance
echo starting GEN2RKSAPP04 Imports
terraform state rm 'module.app["GEN2RKSAPP04"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSAPP04"].aws_instance.this[0]' i-0c4a8ead255180e99

echo GEN2RKSAPP04 imports executed

#import GEN2RKSAPP03 instance
echo starting GEN2RKSAPP03 Imports
terraform state rm 'module.app["GEN2RKSAPP03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSAPP03"].aws_instance.this[0]' i-0fddbe7ef080d40fd

echo GEN2RKSAPP03 imports executed

#import GEN2RKSAPP05 instance
echo starting GEN2RKSAPP05 Imports
terraform state rm 'module.app["GEN2RKSAPP05"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSAPP05"].aws_instance.this[0]' i-06d13f4d5e70c72d0

echo GEN2RKSAPP05 imports executed

#import GEN2RKSDMZ01 instance
echo starting GEN2RKSDMZ01 Imports
terraform state rm 'module.app["GEN2RKSDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSDMZ01"].aws_instance.this[0]' i-002a1d103da64bf0d

echo GEN2RKSDMZ01 imports executed

#import GEN2RKSHM01 instance
echo starting GEN2RKSHM01 Imports
terraform state rm 'module.app["GEN2RKSHM01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSHM01"].aws_instance.this[0]' i-001a38b5a1b696d70

terraform state rm 'module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdb"]' vol-0cdc7e13c35e01389
terraform state rm 'module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0cdc7e13c35e01389:i-001a38b5a1b696d70
terraform state rm 'module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdc"]' vol-05d20c921c6d6a9a7
terraform state rm 'module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-05d20c921c6d6a9a7:i-001a38b5a1b696d70
echo GEN2RKSHM01 imports executed

#import GEN2RKSRDS01 instance
echo starting GEN2RKSRDS01 Imports
terraform state rm 'module.app["GEN2RKSRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSRDS01"].aws_instance.this[0]' i-0a86ad280096ddb3e

echo GEN2RKSRDS01 imports executed

#import GEN2RKSRDS02 instance
echo starting GEN2RKSRDS02 Imports
terraform state rm 'module.app["GEN2RKSRDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSRDS02"].aws_instance.this[0]' i-08047652ba7fae1be

echo GEN2RKSRDS02 imports executed

#import GEN2RKSRDS03 instance
echo starting GEN2RKSRDS03 Imports
terraform state rm 'module.app["GEN2RKSRDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSRDS03"].aws_instance.this[0]' i-07390b8cbc8a1a53b

echo GEN2RKSRDS03 imports executed

#import GEN2RKSRDS04 instance
echo starting GEN2RKSRDS04 Imports
terraform state rm 'module.app["GEN2RKSRDS04"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSRDS04"].aws_instance.this[0]' i-0b654b2d0f2aa1752

echo GEN2RKSRDS04 imports executed

#import GEN2RKSSQL01 instance
echo starting GEN2RKSSQL01 Imports
terraform state rm 'module.app["GEN2RKSSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_instance.this[0]' i-0bbf55fcdfe266411

terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdb"]' vol-04bbf7b8d2bd9d7e6
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-04bbf7b8d2bd9d7e6:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdc"]' vol-001b769f03cccfabb
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-001b769f03cccfabb:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdd"]' vol-09b9b80540897400b
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-09b9b80540897400b:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sde"]' vol-0cf1eebb2b9516b0f
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0cf1eebb2b9516b0f:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdf"]' vol-036c9357d8d7c1c7d
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-036c9357d8d7c1c7d:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdg"]' vol-07267190952e5897a
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-07267190952e5897a:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdh"]' vol-0cd34596325cc4c40
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-0cd34596325cc4c40:i-0bbf55fcdfe266411
terraform state rm 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdi"]' vol-0295de0c1828cd4ba
terraform state rm 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdi"]' /dev/sdi:vol-0295de0c1828cd4ba:i-0bbf55fcdfe266411
echo GEN2RKSSQL01 imports executed

#import gen2rkshana01 instance
echo starting gen2rkshana01 Imports
terraform state rm 'module.app["gen2rkshana01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2rkshana01"].aws_instance.this[0]' i-01678c6008ab9cdba

terraform state rm 'module.app["gen2rkshana01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2rkshana01"].aws_ebs_volume.this["sdb"]' vol-07d8436b2af0a8623
terraform state rm 'module.app["gen2rkshana01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2rkshana01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-07d8436b2af0a8623:i-01678c6008ab9cdba
echo gen2rkshana01 imports executed


#End of command execution
echo Finished executing commands!
