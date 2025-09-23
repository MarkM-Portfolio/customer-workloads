#!/bin/bash

#import EU09DB01 instance
echo starting EU09DB01 Imports
terraform state rm 'module.ec2["EU09DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_instance.this[0]' i-0fc69aaeab1df63c6

terraform state rm 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdb"]' vol-0b22ba268e3c22439
terraform state rm 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0b22ba268e3c22439:i-0fc69aaeab1df63c6
terraform state rm 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdc"]' vol-0d3c66ee5f6192829
terraform state rm 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0d3c66ee5f6192829:i-0fc69aaeab1df63c6
terraform state rm 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdd"]' vol-0d4645fd36765e2ab
terraform state rm 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0d4645fd36765e2ab:i-0fc69aaeab1df63c6
terraform state rm 'module.ec2["EU09DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_ebs_volume.this["sde"]' vol-0e70292a944d05d73
terraform state rm 'module.ec2["EU09DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0e70292a944d05d73:i-0fc69aaeab1df63c6
terraform state rm 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdf"]' vol-045a9b79b530f690d
terraform state rm 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-045a9b79b530f690d:i-0fc69aaeab1df63c6
terraform state rm 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_ebs_volume.this["sdg"]' vol-0fae31d91e7e4249a
terraform state rm 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0fae31d91e7e4249a:i-0fc69aaeab1df63c6
echo EU09DB01 imports executed

#import EU09RDS01 instance
echo starting EU09RDS01 Imports
terraform state rm 'module.ec2["EU09RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09RDS01"].aws_instance.this[0]' i-02b2ed9a27eb60c44

echo EU09RDS01 imports executed

#import EU09RDS02 instance
echo starting EU09RDS02 Imports
terraform state rm 'module.ec2["EU09RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU09RDS02"].aws_instance.this[0]' i-083543d0223d8c0e9

echo EU09RDS02 imports executed


#End of command execution
echo Finished executing commands!