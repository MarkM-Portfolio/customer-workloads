#!/bin/bash

#import EU19DB01 instance
echo starting EU19DB01 Imports
terraform state rm 'module.ec2["EU19DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_instance.this[0]' i-06e7df26afc043abb

terraform state rm 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdb"]' vol-0b09204debf29c9c5
terraform state rm 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0b09204debf29c9c5:i-06e7df26afc043abb
terraform state rm 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdc"]' vol-045d48f2be29f62bf
terraform state rm 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-045d48f2be29f62bf:i-06e7df26afc043abb
terraform state rm 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdd"]' vol-0f8984089b43819e1
terraform state rm 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0f8984089b43819e1:i-06e7df26afc043abb
terraform state rm 'module.ec2["EU19DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_ebs_volume.this["sde"]' vol-06343a206e06d0c62
terraform state rm 'module.ec2["EU19DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-06343a206e06d0c62:i-06e7df26afc043abb
terraform state rm 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_ebs_volume.this["sdf"]' vol-09262956792a6fecd
terraform state rm 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-09262956792a6fecd:i-06e7df26afc043abb
echo EU19DB01 imports executed

#import EU19RDS01 instance
echo starting EU19RDS01 Imports
terraform state rm 'module.ec2["EU19RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU19RDS01"].aws_instance.this[0]' i-05fc5f551013fdb75

echo EU19RDS01 imports executed


#End of command execution
echo Finished executing commands!
