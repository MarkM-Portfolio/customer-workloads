#!/bin/bash

#import EU15AP01 instance
echo starting EU15AP01 Imports
terraform state rm 'module.app["EU15AP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15AP01"].aws_instance.this[0]' i-09c423f57914bb1b1

terraform state rm 'module.app["EU15AP01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15AP01"].aws_ebs_volume.this["sdb"]' vol-0b89f6f03df75680a
terraform state rm 'module.app["EU15AP01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15AP01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0b89f6f03df75680a:i-09c423f57914bb1b1
echo EU15AP01 imports executed

#import EU15AP02 instance
echo starting EU15AP02 Imports
terraform state rm 'module.app["EU15AP02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15AP02"].aws_instance.this[0]' i-0f98d05479316e5fe

echo EU15AP02 imports executed

#import EU15BI01 instance
echo starting EU15BI01 Imports
terraform state rm 'module.app["EU15BI01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15BI01"].aws_instance.this[0]' i-0fff795672ea2f401

echo EU15BI01 imports executed

#import EU15BI02 instance
echo starting EU15BI02 Imports
terraform state rm 'module.app["EU15BI02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15BI02"].aws_instance.this[0]' i-0c95523081e254a20

echo EU15BI02 imports executed

#import EU15DB01 instance
echo starting EU15DB01 Imports
terraform state rm 'module.app["EU15DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_instance.this[0]' i-0d54ff7d8535a4957

terraform state rm 'module.app["EU15DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_ebs_volume.this["sdb"]' vol-05c95bf341acadda0
terraform state rm 'module.app["EU15DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-05c95bf341acadda0:i-0d54ff7d8535a4957
terraform state rm 'module.app["EU15DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_ebs_volume.this["sdc"]' vol-067a30f4dbaba39ae
terraform state rm 'module.app["EU15DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-067a30f4dbaba39ae:i-0d54ff7d8535a4957
terraform state rm 'module.app["EU15DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_ebs_volume.this["sdd"]' vol-07e1917506c25f5dc
terraform state rm 'module.app["EU15DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-07e1917506c25f5dc:i-0d54ff7d8535a4957
terraform state rm 'module.app["EU15DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_ebs_volume.this["sde"]' vol-029a87979eb3512f0
terraform state rm 'module.app["EU15DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-029a87979eb3512f0:i-0d54ff7d8535a4957
terraform state rm 'module.app["EU15DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_ebs_volume.this["sdf"]' vol-0d52f0a4b42f6228c
terraform state rm 'module.app["EU15DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0d52f0a4b42f6228c:i-0d54ff7d8535a4957
echo EU15DB01 imports executed

#import EU15DB02 instance
echo starting EU15DB02 Imports
terraform state rm 'module.app["EU15DB02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_instance.this[0]' i-06e8e0e7630241516

terraform state rm 'module.app["EU15DB02"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_ebs_volume.this["sdb"]' vol-0b95a87d06c883849
terraform state rm 'module.app["EU15DB02"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0b95a87d06c883849:i-06e8e0e7630241516
terraform state rm 'module.app["EU15DB02"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_ebs_volume.this["sdc"]' vol-07fe3f4e7ac2dbc2a
terraform state rm 'module.app["EU15DB02"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-07fe3f4e7ac2dbc2a:i-06e8e0e7630241516
terraform state rm 'module.app["EU15DB02"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_ebs_volume.this["sdd"]' vol-0f98ffc1f4b187fe3
terraform state rm 'module.app["EU15DB02"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0f98ffc1f4b187fe3:i-06e8e0e7630241516
terraform state rm 'module.app["EU15DB02"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_ebs_volume.this["sde"]' vol-05bc77f704f4aeb1d
terraform state rm 'module.app["EU15DB02"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_volume_attachment.this["sde"]' /dev/sde:vol-05bc77f704f4aeb1d:i-06e8e0e7630241516
terraform state rm 'module.app["EU15DB02"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_ebs_volume.this["sdf"]' vol-0cfec561bb795ff3a
terraform state rm 'module.app["EU15DB02"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15DB02"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0cfec561bb795ff3a:i-06e8e0e7630241516
echo EU15DB02 imports executed

#import EU15RDS01 instance
echo starting EU15RDS01 Imports
terraform state rm 'module.app["EU15RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15RDS01"].aws_instance.this[0]' i-0f23c97065f6703b4

echo EU15RDS01 imports executed

#import EU15RDS02 instance
echo starting EU15RDS02 Imports
terraform state rm 'module.app["EU15RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15RDS02"].aws_instance.this[0]' i-0b73bfcb217aa8d16

echo EU15RDS02 imports executed

#import EU15RDS03 instance
echo starting EU15RDS03 Imports
terraform state rm 'module.app["EU15RDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15RDS03"].aws_instance.this[0]' i-0ebdd75bd9002a535

echo EU15RDS03 imports executed

#import EU15V101 instance
echo starting EU15V101 Imports
terraform state rm 'module.app["EU15V101"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15V101"].aws_instance.this[0]' i-007eec8a4f952dea9

terraform state rm 'module.app["EU15V101"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15V101"].aws_ebs_volume.this["sdb"]' vol-091df64b11e894e56
terraform state rm 'module.app["EU15V101"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU15V101"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-091df64b11e894e56:i-007eec8a4f952dea9
echo EU15V101 imports executed

#import Eu15V102 instance
echo starting Eu15V102 Imports
terraform state rm 'module.app["Eu15V102"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["Eu15V102"].aws_instance.this[0]' i-0fbc501abaa849fef

echo Eu15V102 imports executed


#End of command execution
echo Finished executing commands!
