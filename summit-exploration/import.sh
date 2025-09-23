#!/bin/bash

#import EU69APP01 instance
echo starting EU69APP01 Imports
terraform state rm 'module.ec2["EU69APP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69APP01"].aws_instance.this[0]' i-0b7c7d6acf20c16d0

terraform state rm 'module.ec2["EU69APP01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69APP01"].aws_ebs_volume.this["sdb"]' vol-07f4c1f78b1910933
terraform state rm 'module.ec2["EU69APP01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69APP01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-07f4c1f78b1910933:i-0b7c7d6acf20c16d0
echo EU69APP01 imports executed

#import EU69DB01 instance
echo starting EU69DB01 Imports
terraform state rm 'module.ec2["EU69DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_instance.this[0]' i-00438c83246939811

terraform state rm 'module.ec2["EU69DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_ebs_volume.this["sdb"]' vol-0aee7257caf381516
terraform state rm 'module.ec2["EU69DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0aee7257caf381516:i-00438c83246939811
terraform state rm 'module.ec2["EU69DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_ebs_volume.this["sdc"]' vol-05c3587b20a790cec
terraform state rm 'module.ec2["EU69DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-05c3587b20a790cec:i-00438c83246939811
terraform state rm 'module.ec2["EU69DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_ebs_volume.this["sdd"]' vol-032df61f943219924
terraform state rm 'module.ec2["EU69DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-032df61f943219924:i-00438c83246939811
terraform state rm 'module.ec2["EU69DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_ebs_volume.this["sde"]' vol-0b2dff10b23f782f5
terraform state rm 'module.ec2["EU69DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0b2dff10b23f782f5:i-00438c83246939811
echo EU69DB01 imports executed

#import EU69RDS01 instance
echo starting EU69RDS01 Imports
terraform state rm 'module.ec2["EU69RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["EU69RDS01"].aws_instance.this[0]' i-0df1597a1662cd00e

echo EU69RDS01 imports executed


#End of command execution
echo Finished executing commands!