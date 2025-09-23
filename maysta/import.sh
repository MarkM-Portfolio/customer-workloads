#!/bin/bash

#import GEN2MIRDS01 instance
echo starting GEN2MIRDS01 Imports
terraform state rm 'module.app["GEN2MIRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIRDS01"].aws_instance.this[0]' i-08979d904029b5a6d

echo GEN2MIRDS01 imports executed

#import GEN2MIBRK01 instance
echo starting GEN2MIBRK01 Imports
terraform state rm 'module.app["GEN2MIBRK01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIBRK01"].aws_instance.this[0]' i-026caeb95dd60ee2e

echo GEN2MIBRK01 imports executed

#import GEN2MIHM01 instance
echo starting GEN2MIHM01 Imports
terraform state rm 'module.app["GEN2MIHM01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_instance.this[0]' i-0d4e02f2048aa478c

terraform state rm 'module.app["GEN2MIHM01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_ebs_volume.this["sdb"]' vol-057ebff784a417829
terraform state rm 'module.app["GEN2MIHM01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-057ebff784a417829:i-0d4e02f2048aa478c
terraform state rm 'module.app["GEN2MIHM01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_ebs_volume.this["sdc"]' vol-046faf437ae82e3f5
terraform state rm 'module.app["GEN2MIHM01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-046faf437ae82e3f5:i-0d4e02f2048aa478c
terraform state rm 'module.app["GEN2MIHM01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_ebs_volume.this["sdd"]' vol-051866c980eb11821
terraform state rm 'module.app["GEN2MIHM01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIHM01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-051866c980eb11821:i-0d4e02f2048aa478c
echo GEN2MIHM01 imports executed

#import GEN2MIDMZ01 instance
echo starting GEN2MIDMZ01 Imports
terraform state rm 'module.app["GEN2MIDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MIDMZ01"].aws_instance.this[0]' i-0add87cbf58ac28d6

echo GEN2MIDMZ01 imports executed

#import gen2mihana01 instance
echo starting gen2mihana01 Imports
terraform state rm 'module.app["gen2mihana01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2mihana01"].aws_instance.this[0]' i-0aa911453fe2e4fd4

terraform state rm 'module.app["gen2mihana01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2mihana01"].aws_ebs_volume.this["sdb"]' vol-0eff112e52fc651d3
terraform state rm 'module.app["gen2mihana01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2mihana01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0eff112e52fc651d3:i-0aa911453fe2e4fd4
echo gen2mihana01 imports executed


#End of command execution
echo Finished executing commands!
