#!/bin/bash

#import EU60DMZ01 instance
echo starting EU60DMZ01 Imports
terraform state rm 'module.app["EU60DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60DMZ01"].aws_instance.this[0]' i-0121d358588b95c22

echo EU60DMZ01 imports executed

#import EU60HWIN01 instance
echo starting EU60HWIN01 Imports
terraform state rm 'module.app["EU60HWIN01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_instance.this[0]' i-011e7519b60049562

terraform state rm 'module.app["EU60HWIN01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_ebs_volume.this["sdb"]' vol-036f5ebcd6624cd71
terraform state rm 'module.app["EU60HWIN01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-036f5ebcd6624cd71:i-011e7519b60049562
terraform state rm 'module.app["EU60HWIN01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_ebs_volume.this["sdc"]' vol-0d73fb81bf12de4fd
terraform state rm 'module.app["EU60HWIN01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0d73fb81bf12de4fd:i-011e7519b60049562
terraform state rm 'module.app["EU60HWIN01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_ebs_volume.this["sdd"]' vol-0434c1cca3c9e3407
terraform state rm 'module.app["EU60HWIN01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0434c1cca3c9e3407:i-011e7519b60049562
terraform state rm 'module.app["EU60HWIN01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_ebs_volume.this["sde"]' vol-0d3eab06cc0351612
terraform state rm 'module.app["EU60HWIN01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60HWIN01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0d3eab06cc0351612:i-011e7519b60049562
echo EU60HWIN01 imports executed

#import EU60RDS01 instance
echo starting EU60RDS01 Imports
terraform state rm 'module.app["EU60RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60RDS01"].aws_instance.this[0]' i-05784c4e62c12c65a

echo EU60RDS01 imports executed

#import EU60UDMZ01 instance
echo starting EU60UDMZ01 Imports
terraform state rm 'module.app["EU60UDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60UDMZ01"].aws_instance.this[0]' i-05c5e7e329037faaf

echo EU60UDMZ01 imports executed

#import EU60UHWIN01 instance
echo starting EU60UHWIN01 Imports
terraform state rm 'module.app["EU60UHWIN01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60UHWIN01"].aws_instance.this[0]' i-0ba91b7610c420725

echo EU60UHWIN01 imports executed

#import EU60URDS01 instance
echo starting EU60URDS01 Imports
terraform state rm 'module.app["EU60URDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU60URDS01"].aws_instance.this[0]' i-0d3ada006913cb965

echo EU60URDS01 imports executed


#End of command execution
echo Finished executing commands!
