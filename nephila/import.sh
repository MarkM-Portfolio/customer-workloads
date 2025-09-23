#!/bin/bash

#import EU83DB01 instance
echo starting EU83DB01 Imports
terraform state rm 'module.app["EU83DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_instance.this[0]' i-051c42572a80cdb0d

terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sdb"]' vol-0e57d5c2e8e85d885
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0e57d5c2e8e85d885:i-051c42572a80cdb0d
terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sdc"]' vol-01ac48f984fa20294
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-01ac48f984fa20294:i-051c42572a80cdb0d
terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sdd"]' vol-0e0d7fe85448933c7
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0e0d7fe85448933c7:i-051c42572a80cdb0d
terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sde"]' vol-0881951fc1d424e06
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0881951fc1d424e06:i-051c42572a80cdb0d
terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sdf"]' vol-0ac3eeea2f7c9c763
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0ac3eeea2f7c9c763:i-051c42572a80cdb0d
terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sdg"]' vol-0eacb54af892ecf97
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0eacb54af892ecf97:i-051c42572a80cdb0d
terraform state rm 'module.app["EU83DB01"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_ebs_volume.this["sdh"]' vol-0bf08d9b937bcec26
terraform state rm 'module.app["EU83DB01"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83DB01"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-0bf08d9b937bcec26:i-051c42572a80cdb0d
echo EU83DB01 imports executed

#import EU83RDS01 instance
echo starting EU83RDS01 Imports
terraform state rm 'module.app["EU83RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83RDS01"].aws_instance.this[0]' i-06d5557ad26f18208

terraform state rm 'module.app["EU83RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83RDS01"].aws_ebs_volume.this["sdb"]' vol-075bdd4702361d6cc
terraform state rm 'module.app["EU83RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-075bdd4702361d6cc:i-06d5557ad26f18208
echo EU83RDS01 imports executed

#import EU83APP01 instance
echo starting EU83APP01 Imports
terraform state rm 'module.app["EU83APP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU83APP01"].aws_instance.this[0]' i-05f8fb906344bd7e8

echo EU83APP01 imports executed


#End of command execution
echo Finished executing commands!
