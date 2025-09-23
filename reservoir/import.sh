#!/bin/bash

#import EU76DB01 instance
echo starting EU76DB01 Imports
terraform state rm 'module.ec2["EU76DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_instance.this[0]' i-0b089ba3fbf696e93

terraform state rm 'module.ec2["EU76DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_ebs_volume.this["sdb"]' vol-05c1d59742f6338f9
terraform state rm 'module.ec2["EU76DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-05c1d59742f6338f9:i-0b089ba3fbf696e93
terraform state rm 'module.ec2["EU76DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_ebs_volume.this["sdc"]' vol-0abaad6f9fc39c154
terraform state rm 'module.ec2["EU76DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0abaad6f9fc39c154:i-0b089ba3fbf696e93
terraform state rm 'module.ec2["EU76DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_ebs_volume.this["sdd"]' vol-0ab4eeb7930f9202e
terraform state rm 'module.ec2["EU76DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0ab4eeb7930f9202e:i-0b089ba3fbf696e93
terraform state rm 'module.ec2["EU76DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_ebs_volume.this["sde"]' vol-0402885ae938946f4
terraform state rm 'module.ec2["EU76DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0402885ae938946f4:i-0b089ba3fbf696e93
echo EU76DB01 imports executed

#import EU76DB02 instance
echo starting EU76DB02 Imports
terraform state rm 'module.ec2["EU76DB02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_instance.this[0]' i-011935ec7629e00a8

terraform state rm 'module.ec2["EU76DB02"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_ebs_volume.this["sdb"]' vol-028892e62aef44c17
terraform state rm 'module.ec2["EU76DB02"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-028892e62aef44c17:i-011935ec7629e00a8
terraform state rm 'module.ec2["EU76DB02"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_ebs_volume.this["sdc"]' vol-0efbe795ac624c163
terraform state rm 'module.ec2["EU76DB02"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0efbe795ac624c163:i-011935ec7629e00a8
terraform state rm 'module.ec2["EU76DB02"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_ebs_volume.this["sdd"]' vol-06d852040abbabba8
terraform state rm 'module.ec2["EU76DB02"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-06d852040abbabba8:i-011935ec7629e00a8
terraform state rm 'module.ec2["EU76DB02"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_ebs_volume.this["sde"]' vol-01b39ea51066a17b4
terraform state rm 'module.ec2["EU76DB02"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DB02"].aws_volume_attachment.this["sde"]' /dev/sde:vol-01b39ea51066a17b4:i-011935ec7629e00a8
echo EU76DB02 imports executed

#import EU76DMZ01 instance
echo starting EU76DMZ01 Imports
terraform state rm 'module.ec2["EU76DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DMZ01"].aws_instance.this[0]' i-0d0aef6b778c7f85d

terraform state rm 'module.ec2["EU76DMZ01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DMZ01"].aws_ebs_volume.this["sdb"]' vol-0776df33c5a32daad
terraform state rm 'module.ec2["EU76DMZ01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76DMZ01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0776df33c5a32daad:i-0d0aef6b778c7f85d
echo EU76DMZ01 imports executed

#import EU76RDS02 instance
echo starting EU76RDS02 Imports
terraform state rm 'module.ec2["EU76RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS02"].aws_instance.this[0]' i-0a108ed98c99e4d64

echo EU76RDS02 imports executed

#import EU76RDS01 instance
echo starting EU76RDS01 Imports
terraform state rm 'module.ec2["EU76RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS01"].aws_instance.this[0]' i-0fb95270dcbb29dd7

terraform state rm 'module.ec2["EU76RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS01"].aws_ebs_volume.this["sdb"]' vol-04d3ff1a88d7bc232
terraform state rm 'module.ec2["EU76RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-04d3ff1a88d7bc232:i-0fb95270dcbb29dd7
echo EU76RDS01 imports executed

#import EU76RDS03 instance
echo starting EU76RDS03 Imports
terraform state rm 'module.ec2["EU76RDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS03"].aws_instance.this[0]' i-065da57fa9c6942a2

terraform state rm 'module.ec2["EU76RDS03"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS03"].aws_ebs_volume.this["sdb"]' vol-0d50614f54432994b
terraform state rm 'module.ec2["EU76RDS03"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU76RDS03"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0d50614f54432994b:i-065da57fa9c6942a2
echo EU76RDS03 imports executed


#End of command execution
echo Finished executing commands!