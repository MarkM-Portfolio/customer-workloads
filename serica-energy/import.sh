#!/bin/bash

#import EU62APP01 instance
echo starting EU62APP01 Imports
terraform state rm 'module.app["EU62APP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62APP01"].aws_instance.this[0]' i-0990b4955fddd084b

echo EU62APP01 imports executed

#import EU62DB01 instance
echo starting EU62DB01 Imports
terraform state rm 'module.app["EU62DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_instance.this[0]' i-0c0ca15685f14abf4

terraform state rm 'module.app["EU62DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_ebs_volume.this["sdb"]' vol-0d18b9165bc1e4612
terraform state rm 'module.app["EU62DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0d18b9165bc1e4612:i-0c0ca15685f14abf4
terraform state rm 'module.app["EU62DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_ebs_volume.this["sdc"]' vol-09602ee8b2651b624
terraform state rm 'module.app["EU62DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-09602ee8b2651b624:i-0c0ca15685f14abf4
terraform state rm 'module.app["EU62DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_ebs_volume.this["sdd"]' vol-0296159b08ddb81ff
terraform state rm 'module.app["EU62DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0296159b08ddb81ff:i-0c0ca15685f14abf4
terraform state rm 'module.app["EU62DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_ebs_volume.this["sde"]' vol-00503aaf379f388de
terraform state rm 'module.app["EU62DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-00503aaf379f388de:i-0c0ca15685f14abf4
echo EU62DB01 imports executed

#import EU62RDS03 instance
echo starting EU62RDS03 Imports
terraform state rm 'module.app["EU62RDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62RDS03"].aws_instance.this[0]' i-024a89773184ad657

terraform state rm 'module.app["EU62RDS03"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62RDS03"].aws_ebs_volume.this["sdb"]' vol-0d4828d0c4da5f118
terraform state rm 'module.app["EU62RDS03"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU62RDS03"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0d4828d0c4da5f118:i-024a89773184ad657
echo EU62RDS03 imports executed


#End of command execution
echo Finished executing commands!