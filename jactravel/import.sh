#!/bin/bash

#import GEN2JACAPP01 instance
echo starting GEN2JACAPP01 Imports
terraform state rm 'module.app["GEN2JACAPP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACAPP01"].aws_instance.this[0]' i-03036774c3279c76b

echo GEN2JACAPP01 imports executed

#import GEN2JACAPP02 instance
echo starting GEN2JACAPP02 Imports
terraform state rm 'module.app["GEN2JACAPP02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACAPP02"].aws_instance.this[0]' i-0dd0e639b20a6b8da

echo GEN2JACAPP02 imports executed

#import GEN2JACBRK01 instance
echo starting GEN2JACBRK01 Imports
terraform state rm 'module.app["GEN2JACBRK01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACBRK01"].aws_instance.this[0]' i-0d09d85472b977513

echo GEN2JACBRK01 imports executed

#import GEN2JACSQL01 instance
echo starting GEN2JACSQL01 Imports
terraform state rm 'module.app["GEN2JACSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_instance.this[0]' i-031342f63181d0322

terraform state rm 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdb"]' vol-0a14d4b88f7d7ed83
terraform state rm 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0a14d4b88f7d7ed83:i-031342f63181d0322
terraform state rm 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdc"]' vol-0764887bf240fa236
terraform state rm 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0764887bf240fa236:i-031342f63181d0322
terraform state rm 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdd"]' vol-039f861ce47ce559a
terraform state rm 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-039f861ce47ce559a:i-031342f63181d0322
terraform state rm 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sde"]' vol-009f0c66f9aefe8ef
terraform state rm 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-009f0c66f9aefe8ef:i-031342f63181d0322
terraform state rm 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_ebs_volume.this["sdf"]' vol-01fe58a44b48c0889
terraform state rm 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-01fe58a44b48c0889:i-031342f63181d0322
echo GEN2JACSQL01 imports executed

#import GEN2JACRDS02 instance
echo starting GEN2JACRDS02 Imports
terraform state rm 'module.app["GEN2JACRDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACRDS02"].aws_instance.this[0]' i-01725209d48c7a4ad

echo GEN2JACRDS02 imports executed

#import GEN2JACRDS03 instance
echo starting GEN2JACRDS03 Imports
terraform state rm 'module.app["GEN2JACRDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACRDS03"].aws_instance.this[0]' i-00372d0d5da02eae1

echo GEN2JACRDS03 imports executed

#import GEN2JACRDS01 instance
echo starting GEN2JACRDS01 Imports
terraform state rm 'module.app["GEN2JACRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2JACRDS01"].aws_instance.this[0]' i-0b047230555f3fc75

echo GEN2JACRDS01 imports executed


#End of command execution
echo Finished executing commands!
